.class Lcom/kingroot/kinguser/aus$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/aus;->onRootFail(Lcloudsdk/ext/kr/RootExtInfo;Lcloudsdk/ext/kr/RootExtInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aSA:Lcloudsdk/ext/kr/RootExtInfo;

.field final synthetic aSB:Lcloudsdk/ext/kr/RootExtInfo;

.field final synthetic this$0:Lcom/kingroot/kinguser/aus;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/aus;Lcloudsdk/ext/kr/RootExtInfo;Lcloudsdk/ext/kr/RootExtInfo;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/kingroot/kinguser/aus$1;->this$0:Lcom/kingroot/kinguser/aus;

    iput-object p2, p0, Lcom/kingroot/kinguser/aus$1;->aSA:Lcloudsdk/ext/kr/RootExtInfo;

    iput-object p3, p0, Lcom/kingroot/kinguser/aus$1;->aSB:Lcloudsdk/ext/kr/RootExtInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 196
    iget-object v0, p0, Lcom/kingroot/kinguser/aus$1;->this$0:Lcom/kingroot/kinguser/aus;

    iget-object v1, p0, Lcom/kingroot/kinguser/aus$1;->aSA:Lcloudsdk/ext/kr/RootExtInfo;

    iget-object v2, p0, Lcom/kingroot/kinguser/aus$1;->aSB:Lcloudsdk/ext/kr/RootExtInfo;

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/aus;->onRootFail(Lcloudsdk/ext/kr/RootExtInfo;Lcloudsdk/ext/kr/RootExtInfo;)V

    .line 197
    return-void
.end method
