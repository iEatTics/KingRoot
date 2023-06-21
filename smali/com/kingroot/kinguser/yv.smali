.class public Lcom/kingroot/kinguser/yv;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final VN:[Ljava/lang/Object;

.field public static final VO:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public static final VP:[Ljava/lang/String;

.field public static final VQ:[J

.field public static final VR:[Ljava/lang/Long;

.field public static final VS:[I

.field public static final VT:[Ljava/lang/Integer;

.field public static final VU:[S

.field public static final VV:[Ljava/lang/Short;

.field public static final VW:[B

.field public static final VX:[Ljava/lang/Byte;

.field public static final VY:[D

.field public static final VZ:[Ljava/lang/Double;

.field public static final Wa:[F

.field public static final Wb:[Ljava/lang/Float;

.field public static final Wc:[Z

.field public static final Wd:[Ljava/lang/Boolean;

.field public static final We:[C

.field public static final Wf:[Ljava/lang/Character;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28
    new-array v0, v1, [Ljava/lang/Object;

    sput-object v0, Lcom/kingroot/kinguser/yv;->VN:[Ljava/lang/Object;

    .line 32
    new-array v0, v1, [Ljava/lang/Class;

    sput-object v0, Lcom/kingroot/kinguser/yv;->VO:[Ljava/lang/Class;

    .line 36
    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lcom/kingroot/kinguser/yv;->VP:[Ljava/lang/String;

    .line 40
    new-array v0, v1, [J

    sput-object v0, Lcom/kingroot/kinguser/yv;->VQ:[J

    .line 44
    new-array v0, v1, [Ljava/lang/Long;

    sput-object v0, Lcom/kingroot/kinguser/yv;->VR:[Ljava/lang/Long;

    .line 48
    new-array v0, v1, [I

    sput-object v0, Lcom/kingroot/kinguser/yv;->VS:[I

    .line 52
    new-array v0, v1, [Ljava/lang/Integer;

    sput-object v0, Lcom/kingroot/kinguser/yv;->VT:[Ljava/lang/Integer;

    .line 56
    new-array v0, v1, [S

    sput-object v0, Lcom/kingroot/kinguser/yv;->VU:[S

    .line 60
    new-array v0, v1, [Ljava/lang/Short;

    sput-object v0, Lcom/kingroot/kinguser/yv;->VV:[Ljava/lang/Short;

    .line 64
    new-array v0, v1, [B

    sput-object v0, Lcom/kingroot/kinguser/yv;->VW:[B

    .line 68
    new-array v0, v1, [Ljava/lang/Byte;

    sput-object v0, Lcom/kingroot/kinguser/yv;->VX:[Ljava/lang/Byte;

    .line 72
    new-array v0, v1, [D

    sput-object v0, Lcom/kingroot/kinguser/yv;->VY:[D

    .line 76
    new-array v0, v1, [Ljava/lang/Double;

    sput-object v0, Lcom/kingroot/kinguser/yv;->VZ:[Ljava/lang/Double;

    .line 80
    new-array v0, v1, [F

    sput-object v0, Lcom/kingroot/kinguser/yv;->Wa:[F

    .line 84
    new-array v0, v1, [Ljava/lang/Float;

    sput-object v0, Lcom/kingroot/kinguser/yv;->Wb:[Ljava/lang/Float;

    .line 88
    new-array v0, v1, [Z

    sput-object v0, Lcom/kingroot/kinguser/yv;->Wc:[Z

    .line 92
    new-array v0, v1, [Ljava/lang/Boolean;

    sput-object v0, Lcom/kingroot/kinguser/yv;->Wd:[Ljava/lang/Boolean;

    .line 96
    new-array v0, v1, [C

    sput-object v0, Lcom/kingroot/kinguser/yv;->We:[C

    .line 100
    new-array v0, v1, [Ljava/lang/Character;

    sput-object v0, Lcom/kingroot/kinguser/yv;->Wf:[Ljava/lang/Character;

    return-void
.end method

.method public static a([Ljava/lang/Byte;)[B
    .locals 3

    .prologue
    .line 4423
    if-nez p0, :cond_0

    .line 4424
    const/4 v0, 0x0

    .line 4432
    :goto_0
    return-object v0

    .line 4425
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 4426
    sget-object v0, Lcom/kingroot/kinguser/yv;->VW:[B

    goto :goto_0

    .line 4428
    :cond_1
    array-length v0, p0

    new-array v1, v0, [B

    .line 4429
    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 4430
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v1, v0

    .line 4429
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 4432
    goto :goto_0
.end method

.method public static varargs a([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)[TT;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 4909
    if-nez p0, :cond_0

    .line 4910
    invoke-static {p1}, Lcom/kingroot/kinguser/yv;->d([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 4935
    :goto_0
    return-object v0

    .line 4911
    :cond_0
    if-nez p1, :cond_1

    .line 4912
    invoke-static {p0}, Lcom/kingroot/kinguser/yv;->d([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 4914
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 4917
    array-length v0, p0

    array-length v2, p1

    add-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 4918
    array-length v2, p0

    invoke-static {p0, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4920
    const/4 v2, 0x0

    :try_start_0
    array-length v3, p0

    array-length v4, p1

    invoke-static {p1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/ArrayStoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4921
    :catch_0
    move-exception v0

    .line 4928
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    .line 4929
    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 4930
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot store "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " in an array of "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4931
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 4933
    :cond_2
    throw v0
.end method

.method public static varargs c([I[I)[I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 5072
    if-nez p0, :cond_0

    .line 5073
    invoke-static {p1}, Lcom/kingroot/kinguser/yv;->f([I)[I

    move-result-object v0

    .line 5080
    :goto_0
    return-object v0

    .line 5074
    :cond_0
    if-nez p1, :cond_1

    .line 5075
    invoke-static {p0}, Lcom/kingroot/kinguser/yv;->f([I)[I

    move-result-object v0

    goto :goto_0

    .line 5077
    :cond_1
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [I

    .line 5078
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5079
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static d([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 236
    if-nez p0, :cond_0

    .line 237
    const/4 v0, 0x0

    .line 239
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    goto :goto_0
.end method

.method public static e([Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 4692
    invoke-static {p0}, Lcom/kingroot/kinguser/yv;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static f([I)[I
    .locals 1

    .prologue
    .line 268
    if-nez p0, :cond_0

    .line 269
    const/4 v0, 0x0

    .line 271
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    goto :goto_0
.end method

.method public static f([Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 450
    invoke-static {p0}, Lcom/kingroot/kinguser/yv;->e([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    sget-object p0, Lcom/kingroot/kinguser/yv;->VP:[Ljava/lang/String;

    .line 453
    :cond_0
    return-object p0
.end method

.method public static getLength(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1294
    if-nez p0, :cond_0

    .line 1295
    const/4 v0, 0x0

    .line 1297
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method
