.class public Lcom/kingroot/kinguser/bba$a;
.super Lcom/kingroot/kinguser/wo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bba;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private ahL:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/kingroot/kinguser/wo;-><init>()V

    .line 149
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bba$a;->ahL:Ljava/util/concurrent/LinkedBlockingQueue;

    return-void
.end method


# virtual methods
.method public ff(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 207
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 216
    :goto_0
    return v0

    .line 212
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/kingroot/kinguser/bba$a;->ahL:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    const/4 v0, 0x1

    goto :goto_0

    .line 214
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 156
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bba$a;->ahL:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 157
    if-nez v0, :cond_0

    .line 199
    return-void

    .line 162
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/ajv;->zD()Lcom/kingroot/kinguser/ajv;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/ajv;->gC(Ljava/lang/String;)V

    .line 165
    invoke-static {}, Lcom/kingroot/kinguser/bbt;->WG()Lcom/kingroot/kinguser/bbt;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/bbt;->startPrepareRootMgrListWhenInstall(Ljava/lang/String;)V

    .line 169
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 170
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    invoke-static {}, Lcom/kingroot/kinguser/arv;->Nz()Lcom/kingroot/kinguser/arv;

    move-result-object v2

    new-instance v3, Lcom/kingroot/kinguser/receiver/InstallReceiver$InstallProcessThread$1;

    invoke-direct {v3, p0, v0}, Lcom/kingroot/kinguser/receiver/InstallReceiver$InstallProcessThread$1;-><init>(Lcom/kingroot/kinguser/bba$a;Ljava/lang/String;)V

    invoke-virtual {v2, v1, v3}, Lcom/kingroot/kinguser/arv;->cloudCheckApps(Ljava/util/List;Lcom/kingroot/kinguser/examination/service/ICloudCheckCallback;)V

    .line 192
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 193
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 194
    invoke-static {}, Lcom/kingroot/kinguser/awc;->SB()Lcom/kingroot/kinguser/awc;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/awc;->h(Ljava/util/Set;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 195
    :catch_0
    move-exception v0

    goto :goto_0
.end method
