.class Lcom/kingroot/common/framework/service/KServiceManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/common/framework/service/KServiceManager;->removeService(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Hp:Lcom/kingroot/kinguser/to;

.field final synthetic Hq:Lcom/kingroot/common/framework/service/KServiceManager;


# direct methods
.method constructor <init>(Lcom/kingroot/common/framework/service/KServiceManager;Lcom/kingroot/kinguser/to;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/kingroot/common/framework/service/KServiceManager$1;->Hq:Lcom/kingroot/common/framework/service/KServiceManager;

    iput-object p2, p0, Lcom/kingroot/common/framework/service/KServiceManager$1;->Hp:Lcom/kingroot/kinguser/to;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/kingroot/common/framework/service/KServiceManager$1;->Hp:Lcom/kingroot/kinguser/to;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/to;->onDestroy()V

    .line 50
    return-void
.end method
