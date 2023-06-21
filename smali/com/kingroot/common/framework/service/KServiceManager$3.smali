.class Lcom/kingroot/common/framework/service/KServiceManager$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/common/framework/service/KServiceManager;->startService(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Hq:Lcom/kingroot/common/framework/service/KServiceManager;

.field final synthetic Hr:Lcom/kingroot/kinguser/to;

.field final synthetic Hs:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/kingroot/common/framework/service/KServiceManager;Lcom/kingroot/kinguser/to;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/kingroot/common/framework/service/KServiceManager$3;->Hq:Lcom/kingroot/common/framework/service/KServiceManager;

    iput-object p2, p0, Lcom/kingroot/common/framework/service/KServiceManager$3;->Hr:Lcom/kingroot/kinguser/to;

    iput-object p3, p0, Lcom/kingroot/common/framework/service/KServiceManager$3;->Hs:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/kingroot/common/framework/service/KServiceManager$3;->Hr:Lcom/kingroot/kinguser/to;

    iget-object v1, p0, Lcom/kingroot/common/framework/service/KServiceManager$3;->Hs:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/to;->a(Landroid/content/Intent;)V

    .line 108
    return-void
.end method
