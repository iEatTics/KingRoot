.class final Lcom/kingx/cloudsdk/ba$1;
.super Lcom/kingroot/kinguser/bmq;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingx/cloudsdk/ba;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic bBl:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/kingx/cloudsdk/ba;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 54
    iput-object p2, p0, Lcom/kingx/cloudsdk/ba$1;->bBl:Landroid/content/Context;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bmq;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 58
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/blz;->afA()Lcom/kingroot/kinguser/blz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/blz;->afB()Lcloudsdk/ILoadResult;

    .line 61
    iget-object v0, p0, Lcom/kingx/cloudsdk/ba$1;->bBl:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bmf;->bB(Landroid/content/Context;)Lcom/kingroot/kinguser/bmf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bmf;->afI()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
