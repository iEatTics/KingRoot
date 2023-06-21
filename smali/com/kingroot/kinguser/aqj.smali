.class public Lcom/kingroot/kinguser/aqj;
.super Lcom/kingroot/kinguser/aql;
.source "SourceFile"


# instance fields
.field private aLh:Ljava/lang/String;

.field private aLi:Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;

.field private aLj:Landroid/graphics/drawable/Drawable;

.field private aLk:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/kingroot/kinguser/aql;-><init>()V

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/aqj;->aLh:Ljava/lang/String;

    .line 22
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/kingroot/kinguser/aqj;->aLk:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 42
    return-void
.end method

.method public static a(Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;)Lcom/kingroot/kinguser/aqj;
    .locals 4

    .prologue
    .line 30
    new-instance v0, Lcom/kingroot/kinguser/aqj;

    invoke-direct {v0}, Lcom/kingroot/kinguser/aqj;-><init>()V

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->taskID:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->seqNo:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kingroot/kinguser/aqj;->aLh:Ljava/lang/String;

    .line 33
    invoke-static {}, Lcom/kingroot/kinguser/apv;->LO()Lcom/kingroot/kinguser/apv;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->picDownloadUrl:Ljava/lang/String;

    .line 34
    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/apv;->ic(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 35
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v2

    .line 32
    invoke-static {v1, v2}, Lcom/kingroot/kinguser/acs;->a(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    iput-object v1, v0, Lcom/kingroot/kinguser/aqj;->aLj:Landroid/graphics/drawable/Drawable;

    .line 36
    iput-object p0, v0, Lcom/kingroot/kinguser/aqj;->aLi:Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;

    .line 37
    return-object v0
.end method


# virtual methods
.method public ME()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/kingroot/kinguser/aqj;->aLi:Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;

    iget-object v0, v0, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->title:Ljava/lang/String;

    return-object v0
.end method

.method public MF()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/kingroot/kinguser/aqj;->aLi:Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;

    iget-object v0, v0, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->subTitle:Ljava/lang/String;

    return-object v0
.end method

.method protected MG()Z
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    return v0
.end method

.method protected MH()Z
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x1

    return v0
.end method

.method protected MM()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lcom/kingroot/kinguser/aqj;->aLh:Ljava/lang/String;

    return-object v0
.end method

.method public MN()I
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x1

    return v0
.end method

.method public MO()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/kingroot/kinguser/aqj;->aLj:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public MP()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/kingroot/kinguser/aqj;->aLi:Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;

    invoke-static {v0}, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->b(Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;)V

    .line 109
    return-void
.end method

.method public MQ()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/kingroot/kinguser/aqj;->aLk:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    :goto_0
    return-void

    .line 119
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/avd;->Rq()Lcom/kingroot/kinguser/ave;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/aqj;->aLi:Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;

    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/ave;->g(Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;)V

    goto :goto_0
.end method

.method public getIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/kingroot/kinguser/aqj;->aLh:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public ignore()V
    .locals 0

    .prologue
    .line 61
    invoke-super {p0}, Lcom/kingroot/kinguser/aql;->ignore()V

    .line 62
    return-void
.end method

.method public vs()Z
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x1

    return v0
.end method
