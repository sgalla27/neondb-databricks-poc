-- CreateSchema
CREATE SCHEMA IF NOT EXISTS "public";

-- CreateTable
CREATE TABLE "claims" (
    "claim_id" SERIAL NOT NULL,
    "policy_id" INTEGER,
    "claim_date" DATE,
    "amount" DECIMAL(10,2),
    "status" VARCHAR(20),

    CONSTRAINT "claims_pkey" PRIMARY KEY ("claim_id")
);

-- CreateTable
CREATE TABLE "policy" (
    "policy_id" SERIAL NOT NULL,
    "holder_name" VARCHAR(100),
    "policy_type" VARCHAR(10),
    "premium" DECIMAL(10,2),
    "start_date" DATE,
    "is_active" BOOLEAN,

    CONSTRAINT "policy_pkey" PRIMARY KEY ("policy_id")
);

-- AddForeignKey
ALTER TABLE "claims" ADD CONSTRAINT "claims_policy_id_fkey" FOREIGN KEY ("policy_id") REFERENCES "policy"("policy_id") ON DELETE NO ACTION ON UPDATE NO ACTION;

