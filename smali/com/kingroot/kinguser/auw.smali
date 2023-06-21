.class public Lcom/kingroot/kinguser/auw;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final aTf:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/kingroot/kinguser/auw;->aTf:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x4
        0x3
        0x1
        0x5
        0x2
        0x6
    .end array-data
.end method

.method public static QZ()[I
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/kingroot/kinguser/auw;->aTf:[I

    return-object v0
.end method

.method public static U(II)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 73
    if-ne p0, p1, :cond_1

    .line 88
    :cond_0
    :goto_0
    return v0

    .line 78
    :cond_1
    sget-object v2, Lcom/kingroot/kinguser/auw;->aTf:[I

    array-length v3, v2

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_0

    aget v4, v2, v1

    .line 79
    if-ne p0, v4, :cond_2

    .line 80
    const/4 v0, 0x1

    goto :goto_0

    .line 82
    :cond_2
    if-ne p1, v4, :cond_3

    .line 83
    const/4 v0, -0x1

    goto :goto_0

    .line 78
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static jn(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 50
    const/4 v0, 0x0

    .line 52
    :try_start_0
    invoke-static {p0}, Lcom/kingroot/kinguser/aaz;->dZ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 53
    invoke-static {}, Lcom/kingroot/kinguser/avp;->RQ()Lcom/kingroot/kinguser/avp;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/kingroot/kinguser/avp;->jw(Ljava/lang/String;)I

    move-result v0

    .line 54
    if-nez v0, :cond_0

    .line 56
    invoke-static {}, Lcom/kingroot/kinguser/avr;->RV()Lcom/kingroot/kinguser/avr;

    move-result-object v2

    invoke-virtual {v2, p0, v1}, Lcom/kingroot/kinguser/avr;->az(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 62
    :cond_0
    :goto_0
    return v0

    .line 58
    :catch_0
    move-exception v1

    goto :goto_0
.end method
