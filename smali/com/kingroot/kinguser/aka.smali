.class public Lcom/kingroot/kinguser/aka;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private KW:Ljava/lang/String;

.field private auI:Ljava/lang/String;

.field private auJ:I

.field private auK:I

.field private auL:I

.field private auM:Ljava/lang/String;

.field private auN:Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;

.field private auO:Ljava/lang/String;

.field private auP:Z

.field private auQ:Z

.field private auR:Z

.field private auS:Z

.field private auT:Z

.field private auU:I

.field private auV:I

.field private auW:I

.field private auX:I

.field private auY:Ljava/lang/String;

.field private mGroup:I

.field private mSize:J

.field private mVersionName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIIILjava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/aka;->auI:Ljava/lang/String;

    .line 15
    iput v3, p0, Lcom/kingroot/kinguser/aka;->auJ:I

    .line 17
    iput v2, p0, Lcom/kingroot/kinguser/aka;->auK:I

    .line 19
    iput v2, p0, Lcom/kingroot/kinguser/aka;->mGroup:I

    .line 21
    iput v2, p0, Lcom/kingroot/kinguser/aka;->auL:I

    .line 23
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/kingroot/kinguser/aka;->mSize:J

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/aka;->auM:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/aka;->auN:Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/aka;->auO:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/aka;->KW:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/aka;->mVersionName:Ljava/lang/String;

    .line 35
    iput-boolean v3, p0, Lcom/kingroot/kinguser/aka;->auP:Z

    .line 37
    iput-boolean v3, p0, Lcom/kingroot/kinguser/aka;->auQ:Z

    .line 39
    iput-boolean v3, p0, Lcom/kingroot/kinguser/aka;->auR:Z

    .line 41
    iput-boolean v3, p0, Lcom/kingroot/kinguser/aka;->auS:Z

    .line 43
    iput-boolean v3, p0, Lcom/kingroot/kinguser/aka;->auT:Z

    .line 46
    iput v2, p0, Lcom/kingroot/kinguser/aka;->auU:I

    .line 48
    iput v2, p0, Lcom/kingroot/kinguser/aka;->auV:I

    .line 50
    iput v2, p0, Lcom/kingroot/kinguser/aka;->auW:I

    .line 52
    iput v2, p0, Lcom/kingroot/kinguser/aka;->auX:I

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/aka;->auY:Ljava/lang/String;

    .line 61
    invoke-direct/range {p0 .. p7}, Lcom/kingroot/kinguser/aka;->a(Ljava/lang/String;IIIIILjava/lang/String;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIILjava/lang/String;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v6, -0x1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/aka;->auI:Ljava/lang/String;

    .line 15
    iput v2, p0, Lcom/kingroot/kinguser/aka;->auJ:I

    .line 17
    iput v6, p0, Lcom/kingroot/kinguser/aka;->auK:I

    .line 19
    iput v6, p0, Lcom/kingroot/kinguser/aka;->mGroup:I

    .line 21
    iput v6, p0, Lcom/kingroot/kinguser/aka;->auL:I

    .line 23
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/kingroot/kinguser/aka;->mSize:J

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/aka;->auM:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/aka;->auN:Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/aka;->auO:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/aka;->KW:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/aka;->mVersionName:Ljava/lang/String;

    .line 35
    iput-boolean v2, p0, Lcom/kingroot/kinguser/aka;->auP:Z

    .line 37
    iput-boolean v2, p0, Lcom/kingroot/kinguser/aka;->auQ:Z

    .line 39
    iput-boolean v2, p0, Lcom/kingroot/kinguser/aka;->auR:Z

    .line 41
    iput-boolean v2, p0, Lcom/kingroot/kinguser/aka;->auS:Z

    .line 43
    iput-boolean v2, p0, Lcom/kingroot/kinguser/aka;->auT:Z

    .line 46
    iput v6, p0, Lcom/kingroot/kinguser/aka;->auU:I

    .line 48
    iput v6, p0, Lcom/kingroot/kinguser/aka;->auV:I

    .line 50
    iput v6, p0, Lcom/kingroot/kinguser/aka;->auW:I

    .line 52
    iput v6, p0, Lcom/kingroot/kinguser/aka;->auX:I

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/aka;->auY:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v7, p6

    .line 57
    invoke-direct/range {v0 .. v7}, Lcom/kingroot/kinguser/aka;->a(Ljava/lang/String;IIIIILjava/lang/String;)V

    .line 58
    return-void
.end method

.method private a(Ljava/lang/String;IIIIILjava/lang/String;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 65
    iput-object p1, p0, Lcom/kingroot/kinguser/aka;->auI:Ljava/lang/String;

    .line 66
    iput p2, p0, Lcom/kingroot/kinguser/aka;->auJ:I

    .line 67
    iput p3, p0, Lcom/kingroot/kinguser/aka;->auU:I

    .line 68
    iput p4, p0, Lcom/kingroot/kinguser/aka;->auV:I

    .line 69
    iput p5, p0, Lcom/kingroot/kinguser/aka;->auW:I

    .line 70
    iput p6, p0, Lcom/kingroot/kinguser/aka;->auX:I

    .line 71
    iput-object p7, p0, Lcom/kingroot/kinguser/aka;->auY:Ljava/lang/String;

    .line 72
    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/kingroot/kinguser/aka;->auT:Z

    .line 73
    iget-boolean v0, p0, Lcom/kingroot/kinguser/aka;->auT:Z

    if-eqz v0, :cond_2

    .line 91
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 72
    goto :goto_0

    .line 78
    :cond_2
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/kingroot/kinguser/aka;->auI:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 79
    const/4 v3, 0x5

    if-ne p2, v3, :cond_4

    .line 80
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_2
    iput-boolean v1, p0, Lcom/kingroot/kinguser/aka;->auS:Z

    goto :goto_1

    .line 88
    :catch_0
    move-exception v0

    goto :goto_1

    :cond_3
    move v1, v2

    .line 80
    goto :goto_2

    .line 82
    :cond_4
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_5

    :goto_3
    iput-boolean v1, p0, Lcom/kingroot/kinguser/aka;->auS:Z

    .line 83
    iget-boolean v1, p0, Lcom/kingroot/kinguser/aka;->auS:Z

    if-eqz v1, :cond_0

    .line 84
    invoke-static {v0}, Lcom/kingroot/kinguser/rs;->s(Ljava/io/File;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/kingroot/kinguser/aka;->auR:Z

    .line 85
    invoke-static {v0}, Lcom/kingroot/kinguser/rs;->getFileMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/aka;->KW:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_5
    move v1, v2

    .line 82
    goto :goto_3
.end method


# virtual methods
.method public Aa()Z
    .locals 1

    .prologue
    .line 207
    iget-boolean v0, p0, Lcom/kingroot/kinguser/aka;->auQ:Z

    return v0
.end method

.method public Ab()Z
    .locals 1

    .prologue
    .line 211
    iget-boolean v0, p0, Lcom/kingroot/kinguser/aka;->auT:Z

    return v0
.end method

.method public Ac()Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/kingroot/kinguser/aka;->auN:Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;

    return-object v0
.end method

.method public a(IIIJLjava/lang/String;)V
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 117
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move-object/from16 v6, p6

    move v8, v7

    invoke-virtual/range {v0 .. v8}, Lcom/kingroot/kinguser/aka;->a(IIIJLjava/lang/String;ZZ)V

    .line 118
    return-void
.end method

.method public a(IIIJLjava/lang/String;ZZ)V
    .locals 0

    .prologue
    .line 107
    iput p1, p0, Lcom/kingroot/kinguser/aka;->auK:I

    .line 108
    iput p2, p0, Lcom/kingroot/kinguser/aka;->mGroup:I

    .line 109
    iput p3, p0, Lcom/kingroot/kinguser/aka;->auL:I

    .line 110
    iput-wide p4, p0, Lcom/kingroot/kinguser/aka;->mSize:J

    .line 111
    iput-object p6, p0, Lcom/kingroot/kinguser/aka;->auM:Ljava/lang/String;

    .line 112
    iput-boolean p8, p0, Lcom/kingroot/kinguser/aka;->auQ:Z

    .line 113
    iput-boolean p7, p0, Lcom/kingroot/kinguser/aka;->auP:Z

    .line 114
    return-void
.end method

.method public a(Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lcom/kingroot/kinguser/aka;->auN:Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;

    .line 216
    return-void
.end method

.method public dG()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/kingroot/kinguser/aka;->mVersionName:Ljava/lang/String;

    return-object v0
.end method

.method public gE(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/kingroot/kinguser/aka;->mVersionName:Ljava/lang/String;

    .line 192
    return-void
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lcom/kingroot/kinguser/aka;->auL:I

    return v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 163
    iget-wide v0, p0, Lcom/kingroot/kinguser/aka;->mSize:J

    return-wide v0
.end method

.method public lk()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/kingroot/kinguser/aka;->KW:Ljava/lang/String;

    return-object v0
.end method

.method public zN()Z
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/kingroot/kinguser/aka;->auS:Z

    return v0
.end method

.method public zO()Z
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/kingroot/kinguser/aka;->auR:Z

    return v0
.end method

.method public zP()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/kingroot/kinguser/aka;->auJ:I

    return v0
.end method

.method public zQ()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/kingroot/kinguser/aka;->auI:Ljava/lang/String;

    return-object v0
.end method

.method public zR()Ljava/lang/String;
    .locals 2

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/kingroot/kinguser/aka;->auS:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/kingroot/kinguser/aka;->auR:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/kingroot/kinguser/aka;->auQ:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/kingroot/kinguser/aka;->auJ:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 141
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/kingroot/kinguser/aka;->auI:Ljava/lang/String;

    invoke-static {v1}, Lcom/kingroot/kinguser/rs;->cy(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p0, Lcom/kingroot/kinguser/aka;->auO:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/kingroot/kinguser/aka;->auO:Ljava/lang/String;

    return-object v0

    .line 142
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public zS()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/kingroot/kinguser/aka;->auK:I

    return v0
.end method

.method public zT()I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lcom/kingroot/kinguser/aka;->mGroup:I

    return v0
.end method

.method public zU()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/kingroot/kinguser/aka;->auM:Ljava/lang/String;

    return-object v0
.end method

.method public zV()I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lcom/kingroot/kinguser/aka;->auU:I

    return v0
.end method

.method public zW()I
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Lcom/kingroot/kinguser/aka;->auV:I

    return v0
.end method

.method public zX()I
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lcom/kingroot/kinguser/aka;->auW:I

    return v0
.end method

.method public zY()I
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lcom/kingroot/kinguser/aka;->auX:I

    return v0
.end method

.method public zZ()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/kingroot/kinguser/aka;->auY:Ljava/lang/String;

    return-object v0
.end method
