-- CreateTable
CREATE TABLE "Usuario" (
    "Id" SERIAL NOT NULL,
    "Nombre" TEXT NOT NULL,
    "Apellido" TEXT NOT NULL,

    CONSTRAINT "Usuario_pkey" PRIMARY KEY ("Id")
);

-- CreateTable
CREATE TABLE "Empleados" (
    "Id" SERIAL NOT NULL,
    "Nombre" TEXT NOT NULL,
    "Cargo" TEXT NOT NULL,
    "Email" TEXT NOT NULL,
    "Telefono" TEXT,
    "Responsable" INTEGER,

    CONSTRAINT "Empleados_pkey" PRIMARY KEY ("Id")
);

-- CreateIndex
CREATE UNIQUE INDEX "Empleados_Email_key" ON "Empleados"("Email");

-- CreateIndex
CREATE INDEX "Empleados_Responsable_idx" ON "Empleados"("Responsable");
