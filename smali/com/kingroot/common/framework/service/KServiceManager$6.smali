.class Lcom/kingroot/common/framework/service/KServiceManager$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/common/framework/service/KServiceManager;->unbindService(Ljava/lang/String;)V
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
    .line 187
    iput-object p1, p0, Lcom/kingroot/common/framework/service/KServiceManager$6;->Hq:Lcom/kingroot/common/framework/service/KServiceManager;

    iput-object p2, p0, Lcom/kingroot/common/framework/service/KServiceManager$6;->Hr:Lcom/kingroot/kinguser/to;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/kingroot/common/framework/service/KServiceManager$6;->Hr:Lcom/kingroot/kinguser/to;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/to;->jR()V

    .line 191
    return-void
.end method
