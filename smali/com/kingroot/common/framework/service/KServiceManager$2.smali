.class Lcom/kingroot/common/framework/service/KServiceManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/common/framework/service/KServiceManager;->addService(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Hq:Lcom/kingroot/common/framework/service/KServiceManager;

.field final synthetic Hr:Lcom/kingroot/kinguser/to;


# direct methods
.method constructor <init>(Lcom/kingroot/common/framework/service/KServiceManager;Lcom/kingroot/kinguser/to;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/kingroot/common/framework/service/KServiceManager$2;->Hq:Lcom/kingroot/common/framework/service/KServiceManager;

    iput-object p2, p0, Lcom/kingroot/common/framework/service/KServiceManager$2;->Hr:Lcom/kingroot/kinguser/to;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/kingroot/common/framework/service/KServiceManager$2;->Hr:Lcom/kingroot/kinguser/to;

    iget-object v1, p0, Lcom/kingroot/common/framework/service/KServiceManager$2;->Hq:Lcom/kingroot/common/framework/service/KServiceManager;

    invoke-static {v1}, Lcom/kingroot/common/framework/service/KServiceManager;->access$000(Lcom/kingroot/common/framework/service/KServiceManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/to;->I(Landroid/content/Context;)V

    .line 79
    return-void
.end method
