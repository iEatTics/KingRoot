.class public final Lcom/kingroot/kinguser/jy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/ha;


# instance fields
.field public dg:Ljava/lang/String;

.field public dh:Ljava/lang/String;

.field private dm:Ljava/lang/String;

.field public tr:I

.field public ts:I

.field private tt:I

.field private tu:I

.field private tv:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lcom/kingroot/kinguser/jy;->tr:I

    .line 35
    iput-object p2, p0, Lcom/kingroot/kinguser/jy;->dg:Ljava/lang/String;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/jy;->dh:Ljava/lang/String;

    .line 37
    return-void
.end method

.method private static aR(Ljava/lang/String;)Lcom/kingroot/kinguser/jy;
    .locals 6

    .prologue
    const/4 v0, 0x3

    const v5, 0x7fffffff

    const/4 v1, 0x0

    .line 101
    const-string v2, "ipme result: "

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 102
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 109
    array-length v2, v3

    if-ge v2, v0, :cond_0

    .line 110
    new-instance v0, Lcom/kingroot/kinguser/jy;

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/kingroot/kinguser/jy;-><init>(ILjava/lang/String;)V

    .line 111
    iput-object p0, v0, Lcom/kingroot/kinguser/jy;->dh:Ljava/lang/String;

    .line 128
    :goto_0
    return-object v0

    .line 113
    :cond_0
    new-instance v2, Lcom/kingroot/kinguser/jy;

    invoke-direct {v2}, Lcom/kingroot/kinguser/jy;-><init>()V

    .line 115
    aget-object v4, v3, v1

    invoke-static {v4, v5}, Lcom/kingroot/kinguser/jy;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v2, Lcom/kingroot/kinguser/jy;->tt:I

    .line 116
    const/4 v4, 0x1

    aget-object v4, v3, v4

    invoke-static {v4, v5}, Lcom/kingroot/kinguser/jy;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v2, Lcom/kingroot/kinguser/jy;->tu:I

    .line 117
    const/4 v4, 0x2

    aget-object v4, v3, v4

    invoke-static {v4, v5}, Lcom/kingroot/kinguser/jy;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v2, Lcom/kingroot/kinguser/jy;->tv:I

    .line 118
    invoke-static {v3}, Lcom/kingroot/kinguser/jy;->d([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/kingroot/kinguser/jy;->dm:Ljava/lang/String;

    .line 120
    iget v3, v2, Lcom/kingroot/kinguser/jy;->tt:I

    if-nez v3, :cond_1

    move v0, v1

    :cond_1
    iput v0, v2, Lcom/kingroot/kinguser/jy;->tr:I

    .line 125
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/kingroot/kinguser/jy;->dh:Ljava/lang/String;

    move-object v0, v2

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;ILjava/lang/String;)Lcom/kingroot/kinguser/ha;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 81
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 82
    :cond_0
    new-instance v0, Lcom/kingroot/kinguser/jy;

    const/16 v1, 0x8

    invoke-direct {v0, v1, v2}, Lcom/kingroot/kinguser/jy;-><init>(ILjava/lang/String;)V

    .line 94
    :goto_0
    iput p1, v0, Lcom/kingroot/kinguser/jy;->ts:I

    .line 95
    iput-object p2, v0, Lcom/kingroot/kinguser/jy;->dg:Ljava/lang/String;

    .line 97
    return-object v0

    .line 84
    :cond_1
    const-string v0, "ipme result: "

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 85
    invoke-static {p0}, Lcom/kingroot/kinguser/jy;->aR(Ljava/lang/String;)Lcom/kingroot/kinguser/jy;

    move-result-object v0

    goto :goto_0

    .line 87
    :cond_2
    new-instance v0, Lcom/kingroot/kinguser/jy;

    const/16 v1, 0x9

    invoke-direct {v0, v1, v2}, Lcom/kingroot/kinguser/jy;-><init>(ILjava/lang/String;)V

    .line 90
    iput-object p0, v0, Lcom/kingroot/kinguser/jy;->dh:Ljava/lang/String;

    goto :goto_0
.end method

.method private static d([Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 141
    array-length v0, p0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 143
    const/4 v0, 0x3

    aget-object v0, p0, v0

    .line 145
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private static getInt(Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 133
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    .line 137
    :goto_0
    return p1

    .line 134
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public aJ()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/kingroot/kinguser/jy;->tr:I

    return v0
.end method

.method public aK()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/kingroot/kinguser/jy;->dg:Ljava/lang/String;

    return-object v0
.end method

.method public aL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/kingroot/kinguser/jy;->dh:Ljava/lang/String;

    return-object v0
.end method

.method public aM()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/kingroot/kinguser/jy;->tt:I

    return v0
.end method

.method public aN()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/kingroot/kinguser/jy;->tu:I

    return v0
.end method

.method public aO()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/kingroot/kinguser/jy;->tv:I

    return v0
.end method

.method public aP()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/kingroot/kinguser/jy;->dm:Ljava/lang/String;

    return-object v0
.end method
