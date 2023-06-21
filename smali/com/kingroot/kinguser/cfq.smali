.class public Lcom/kingroot/kinguser/cfq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bYN:Lcom/kingroot/kinguser/cff;

.field private cdv:Ljava/lang/String;

.field private cdw:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/kingroot/kinguser/cff;Z)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/cfq;->cdv:Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/cfq;->cdw:Z

    .line 36
    iput-object p2, p0, Lcom/kingroot/kinguser/cfq;->bYN:Lcom/kingroot/kinguser/cff;

    .line 37
    iget-object v0, p0, Lcom/kingroot/kinguser/cfq;->bYN:Lcom/kingroot/kinguser/cff;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cff;->alL()Lcom/kingroot/kinguser/ceu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ceu;->fV()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/cfq;->cdv:Ljava/lang/String;

    .line 39
    return-void
.end method

.method private M(IZ)Lcom/kingroot/kinguser/ax;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 172
    .line 174
    iget-object v1, p0, Lcom/kingroot/kinguser/cfq;->bYN:Lcom/kingroot/kinguser/cff;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/cff;->alL()Lcom/kingroot/kinguser/ceu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/ceu;->fV()Ljava/lang/String;

    move-result-object v2

    .line 175
    iget-object v1, p0, Lcom/kingroot/kinguser/cfq;->bYN:Lcom/kingroot/kinguser/cff;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/cff;->alL()Lcom/kingroot/kinguser/ceu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/ceu;->fW()Ljava/lang/String;

    move-result-object v1

    .line 176
    if-eqz v2, :cond_1

    .line 177
    :goto_0
    if-eqz v1, :cond_2

    .line 180
    :goto_1
    if-eqz p2, :cond_3

    .line 181
    new-instance v0, Lcom/kingroot/kinguser/ax;

    invoke-direct {v0}, Lcom/kingroot/kinguser/ax;-><init>()V

    .line 182
    iput p1, v0, Lcom/kingroot/kinguser/ax;->jU:I

    .line 183
    iput-object v2, v0, Lcom/kingroot/kinguser/ax;->jV:Ljava/lang/String;

    .line 184
    iput-object v1, v0, Lcom/kingroot/kinguser/ax;->jP:Ljava/lang/String;

    .line 202
    :cond_0
    :goto_2
    return-object v0

    .line 176
    :cond_1
    const-string v2, ""

    goto :goto_0

    .line 177
    :cond_2
    const-string v1, ""

    goto :goto_1

    .line 186
    :cond_3
    invoke-direct {p0}, Lcom/kingroot/kinguser/cfq;->alb()Z

    move-result v3

    .line 187
    if-nez v3, :cond_0

    .line 192
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 193
    new-instance v0, Lcom/kingroot/kinguser/ax;

    invoke-direct {v0}, Lcom/kingroot/kinguser/ax;-><init>()V

    .line 194
    iput p1, v0, Lcom/kingroot/kinguser/ax;->jU:I

    .line 195
    iput-object v2, v0, Lcom/kingroot/kinguser/ax;->jV:Ljava/lang/String;

    .line 196
    iput-object v1, v0, Lcom/kingroot/kinguser/ax;->jP:Ljava/lang/String;

    goto :goto_2
.end method

.method static synthetic a(Lcom/kingroot/kinguser/cfq;)Lcom/kingroot/kinguser/cff;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/kingroot/kinguser/cfq;->bYN:Lcom/kingroot/kinguser/cff;

    return-object v0
.end method

.method private a(JILcom/kingroot/kinguser/bb;)Lcom/kingroot/kinguser/cfp;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Lcom/kingroot/kinguser/bb;",
            ")",
            "Lcom/kingroot/kinguser/cfp",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            "Lcom/qq/taf/jce/JceStruct;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 242
    if-nez p4, :cond_1

    .line 253
    :cond_0
    :goto_0
    return-object v2

    .line 247
    :cond_1
    iget v0, p4, Lcom/kingroot/kinguser/bb;->ki:I

    if-nez v0, :cond_2

    .line 248
    invoke-virtual {p0, v1, v1}, Lcom/kingroot/kinguser/cfq;->L(IZ)V

    goto :goto_0

    .line 249
    :cond_2
    iget v0, p4, Lcom/kingroot/kinguser/bb;->ki:I

    if-ne v0, v1, :cond_0

    .line 250
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/kingroot/kinguser/cfq;->L(IZ)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/cfq;JILcom/kingroot/kinguser/bb;)Lcom/kingroot/kinguser/cfp;
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/kingroot/kinguser/cfq;->a(JILcom/kingroot/kinguser/bb;)Lcom/kingroot/kinguser/cfp;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/cfq;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/kingroot/kinguser/cfq;->cdv:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/kingroot/kinguser/cfq;Z)Z
    .locals 0

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/kingroot/kinguser/cfq;->cdw:Z

    return p1
.end method

.method private alb()Z
    .locals 1

    .prologue
    .line 46
    invoke-static {}, Lcom/kingroot/kinguser/cfd;->fI()Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    const/4 v0, 0x0

    .line 50
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cfq;->cdv:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method

.method private amC()Lcom/kingroot/kinguser/av;
    .locals 2

    .prologue
    .line 155
    new-instance v1, Lcom/kingroot/kinguser/av;

    invoke-direct {v1}, Lcom/kingroot/kinguser/av;-><init>()V

    .line 156
    iget-object v0, p0, Lcom/kingroot/kinguser/cfq;->bYN:Lcom/kingroot/kinguser/cff;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cff;->alL()Lcom/kingroot/kinguser/ceu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ceu;->fW()Ljava/lang/String;

    move-result-object v0

    .line 159
    if-eqz v0, :cond_0

    :goto_0
    iput-object v0, v1, Lcom/kingroot/kinguser/av;->jP:Ljava/lang/String;

    .line 162
    return-object v1

    .line 159
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method public L(IZ)V
    .locals 8

    .prologue
    .line 113
    iget-object v0, p0, Lcom/kingroot/kinguser/cfq;->bYN:Lcom/kingroot/kinguser/cff;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cff;->alL()Lcom/kingroot/kinguser/ceu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ceu;->fT()Z

    move-result v0

    if-nez v0, :cond_1

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/cfq;->M(IZ)Lcom/kingroot/kinguser/ax;

    move-result-object v2

    .line 120
    if-eqz v2, :cond_0

    .line 124
    invoke-static {}, Lcom/kingroot/kinguser/cfd;->alH()Lcom/kingroot/kinguser/cfi;

    move-result-object v0

    .line 125
    const/16 v1, 0x138f

    new-instance v3, Lcom/kingroot/kinguser/be;

    invoke-direct {v3}, Lcom/kingroot/kinguser/be;-><init>()V

    const/4 v4, 0x0

    new-instance v5, Lcom/kingroot/kinguser/cfq$2;

    invoke-direct {v5, p0}, Lcom/kingroot/kinguser/cfq$2;-><init>(Lcom/kingroot/kinguser/cfq;)V

    const-wide/16 v6, 0x7530

    invoke-interface/range {v0 .. v7}, Lcom/kingroot/kinguser/cfi;->a(ILcom/qq/taf/jce/JceStruct;Lcom/qq/taf/jce/JceStruct;ILcom/kingroot/kinguser/cci;J)Ljava/lang/ref/WeakReference;

    goto :goto_0
.end method

.method public amB()V
    .locals 8

    .prologue
    .line 60
    iget-object v0, p0, Lcom/kingroot/kinguser/cfq;->bYN:Lcom/kingroot/kinguser/cff;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cff;->alL()Lcom/kingroot/kinguser/ceu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ceu;->fT()Z

    move-result v0

    if-nez v0, :cond_1

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    iget-boolean v0, p0, Lcom/kingroot/kinguser/cfq;->cdw:Z

    if-nez v0, :cond_0

    .line 70
    invoke-direct {p0}, Lcom/kingroot/kinguser/cfq;->alb()Z

    move-result v0

    .line 71
    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/kingroot/kinguser/cfq;->bYN:Lcom/kingroot/kinguser/cff;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cff;->alL()Lcom/kingroot/kinguser/ceu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ceu;->fU()V

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/cfq;->cdw:Z

    .line 78
    invoke-static {}, Lcom/kingroot/kinguser/cfd;->alH()Lcom/kingroot/kinguser/cfi;

    move-result-object v0

    .line 79
    const/16 v1, 0x138e

    invoke-direct {p0}, Lcom/kingroot/kinguser/cfq;->amC()Lcom/kingroot/kinguser/av;

    move-result-object v2

    new-instance v3, Lcom/kingroot/kinguser/bd;

    invoke-direct {v3}, Lcom/kingroot/kinguser/bd;-><init>()V

    const/4 v4, 0x0

    new-instance v5, Lcom/kingroot/kinguser/cfq$1;

    invoke-direct {v5, p0}, Lcom/kingroot/kinguser/cfq$1;-><init>(Lcom/kingroot/kinguser/cfq;)V

    const-wide/16 v6, 0x7530

    invoke-interface/range {v0 .. v7}, Lcom/kingroot/kinguser/cfi;->a(ILcom/qq/taf/jce/JceStruct;Lcom/qq/taf/jce/JceStruct;ILcom/kingroot/kinguser/cci;J)Ljava/lang/ref/WeakReference;

    goto :goto_0
.end method

.method public c(Lcom/kingroot/kinguser/cff$c;)V
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 210
    new-instance v7, Lcom/kingroot/kinguser/cfq$3;

    invoke-direct {v7, p0}, Lcom/kingroot/kinguser/cfq$3;-><init>(Lcom/kingroot/kinguser/cfq;)V

    .line 228
    const-wide/16 v2, 0x0

    const/16 v4, 0x3aac

    new-instance v5, Lcom/kingroot/kinguser/bb;

    invoke-direct {v5}, Lcom/kingroot/kinguser/bb;-><init>()V

    move-object v1, p1

    move v8, v6

    invoke-interface/range {v1 .. v8}, Lcom/kingroot/kinguser/cff$c;->a(JILcom/qq/taf/jce/JceStruct;ILcom/kingroot/kinguser/cck;Z)V

    .line 230
    return-void
.end method
