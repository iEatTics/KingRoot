.class Lcom/kingroot/kinguser/aus$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/aus$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aSE:Lcom/kingroot/kinguser/aus$3;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/aus$3;)V
    .locals 0

    .prologue
    .line 864
    iput-object p1, p0, Lcom/kingroot/kinguser/aus$3$1;->aSE:Lcom/kingroot/kinguser/aus$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 867
    iget-object v0, p0, Lcom/kingroot/kinguser/aus$3$1;->aSE:Lcom/kingroot/kinguser/aus$3;

    iget-object v0, v0, Lcom/kingroot/kinguser/aus$3;->this$0:Lcom/kingroot/kinguser/aus;

    invoke-virtual {v0, v1, v1}, Lcom/kingroot/kinguser/aus;->onRootFail(Lcloudsdk/ext/kr/RootExtInfo;Lcloudsdk/ext/kr/RootExtInfo;)V

    .line 868
    return-void
.end method
