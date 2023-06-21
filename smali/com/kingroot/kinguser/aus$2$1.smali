.class Lcom/kingroot/kinguser/aus$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/aus$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aSC:Lcloudsdk/ext/kr/RootInfo;

.field final synthetic aSD:Lcom/kingroot/kinguser/aus$2;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/aus$2;Lcloudsdk/ext/kr/RootInfo;)V
    .locals 0

    .prologue
    .line 829
    iput-object p1, p0, Lcom/kingroot/kinguser/aus$2$1;->aSD:Lcom/kingroot/kinguser/aus$2;

    iput-object p2, p0, Lcom/kingroot/kinguser/aus$2$1;->aSC:Lcloudsdk/ext/kr/RootInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 832
    iget-object v0, p0, Lcom/kingroot/kinguser/aus$2$1;->aSD:Lcom/kingroot/kinguser/aus$2;

    iget-object v0, v0, Lcom/kingroot/kinguser/aus$2;->this$0:Lcom/kingroot/kinguser/aus;

    iget-object v1, p0, Lcom/kingroot/kinguser/aus$2$1;->aSC:Lcloudsdk/ext/kr/RootInfo;

    invoke-virtual {v1}, Lcloudsdk/ext/kr/RootInfo;->getMobileRootInfo()Lcloudsdk/ext/kr/RootExtInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/aus$2$1;->aSC:Lcloudsdk/ext/kr/RootInfo;

    invoke-virtual {v2}, Lcloudsdk/ext/kr/RootInfo;->getPcRootInfo()Lcloudsdk/ext/kr/RootExtInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/aus;->onRootFail(Lcloudsdk/ext/kr/RootExtInfo;Lcloudsdk/ext/kr/RootExtInfo;)V

    .line 833
    return-void
.end method
