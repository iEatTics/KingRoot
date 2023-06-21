.class public abstract Lcom/kingroot/kinguser/avj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected aTu:I

.field protected aTv:Lcom/kingroot/kinguser/avz;

.field private afe:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lcom/kingroot/kinguser/avj;->aTu:I

    .line 22
    iput-object v1, p0, Lcom/kingroot/kinguser/avj;->aTv:Lcom/kingroot/kinguser/avz;

    .line 24
    iput-object v1, p0, Lcom/kingroot/kinguser/avj;->afe:Ljava/lang/String;

    .line 27
    iput p1, p0, Lcom/kingroot/kinguser/avj;->aTu:I

    .line 28
    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/avj;->mContext:Landroid/content/Context;

    .line 29
    iget-object v0, p0, Lcom/kingroot/kinguser/avj;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/avj;->afe:Ljava/lang/String;

    .line 31
    invoke-static {}, Lcom/kingroot/kinguser/avv;->Sj()Lcom/kingroot/kinguser/avv;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/avj$1;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/avj$1;-><init>(Lcom/kingroot/kinguser/avj;)V

    iget v2, p0, Lcom/kingroot/kinguser/avj;->aTu:I

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/avv;->a(Lcom/kingroot/kingmaster/network/updatalist/CommonList$a;I)V

    .line 37
    return-void
.end method

.method private gZ(I)Lcom/kingroot/kinguser/br;
    .locals 6

    .prologue
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 72
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/avj;->Rx()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 75
    :try_start_0
    invoke-static {v2, v0}, Lcom/kingroot/kinguser/rs;->e(Ljava/lang/String;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/avj;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kingroot/kinguser/avj;->uu()Ljava/lang/String;

    move-result-object v1

    .line 83
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/kingroot/kinguser/br;

    invoke-direct {v4}, Lcom/kingroot/kinguser/br;-><init>()V

    const-string v5, "UTF-8"

    .line 81
    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/aeq;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/br;

    .line 84
    return-object v0

    .line 76
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public Rw()Lcom/kingroot/kinguser/br;
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/kingroot/kinguser/avj;->aTu:I

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/avj;->gZ(I)Lcom/kingroot/kinguser/br;

    move-result-object v0

    return-object v0
.end method

.method public Rx()Ljava/lang/String;
    .locals 3

    .prologue
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/kingroot/kinguser/avj;->aTu:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/kingroot/kinguser/avj;->uu()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/kingroot/kinguser/avj;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected uu()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/kingroot/kinguser/avj;->afe:Ljava/lang/String;

    return-object v0
.end method

.method public abstract uy()V
.end method
