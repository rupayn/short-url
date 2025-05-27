-- CreateTable
CREATE TABLE "User" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "password" TEXT NOT NULL,

    CONSTRAINT "User_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Urls" (
    "id" SERIAL NOT NULL,
    "mainUrl" TEXT NOT NULL,
    "shortUrl" TEXT NOT NULL,
    "clicked" INTEGER NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL,
    "lastUsed" TEXT NOT NULL,
    "userId" INTEGER NOT NULL,

    CONSTRAINT "Urls_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "Urls" ADD CONSTRAINT "Urls_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
