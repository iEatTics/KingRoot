.class Lcom/kingroot/kinguser/bfd$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/baz$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bfd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/bfd;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bfd;)V
    .locals 0

    .prologue
    .line 546
    iput-object p1, p0, Lcom/kingroot/kinguser/bfd$4;->this$0:Lcom/kingroot/kinguser/bfd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aE(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 549
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/bfd$4;->this$0:Lcom/kingroot/kinguser/bfd;

    invoke-static {v0}, Lcom/kingroot/kinguser/bfd;->a(Lcom/kingroot/kinguser/bfd;)Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->pkgName:Ljava/lang/String;

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd$4;->this$0:Lcom/kingroot/kinguser/bfd;

    invoke-static {v0}, Lcom/kingroot/kinguser/bfd;->r(Lcom/kingroot/kinguser/bfd;)Lcom/kingroot/kinguser/baz$a;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/baz;->b(Lcom/kingroot/kinguser/baz$a;)V

    .line 552
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd$4;->this$0:Lcom/kingroot/kinguser/bfd;

    invoke-static {v0}, Lcom/kingroot/kinguser/bfd;->a(Lcom/kingroot/kinguser/bfd;)Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->pkgName:Ljava/lang/String;

    const-string v1, "Roottool"

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/apd;->aq(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd$4;->this$0:Lcom/kingroot/kinguser/bfd;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bfd;->b(Lcom/kingroot/kinguser/bfd;I)V

    .line 554
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd$4;->this$0:Lcom/kingroot/kinguser/bfd;

    invoke-static {v0}, Lcom/kingroot/kinguser/bfd;->b(Lcom/kingroot/kinguser/bfd;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 555
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd$4;->this$0:Lcom/kingroot/kinguser/bfd;

    invoke-static {v0}, Lcom/kingroot/kinguser/bfd;->c(Lcom/kingroot/kinguser/bfd;)Lcom/kingroot/kinguser/tk;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd$4;->this$0:Lcom/kingroot/kinguser/bfd;

    invoke-static {v0}, Lcom/kingroot/kinguser/bfd;->c(Lcom/kingroot/kinguser/bfd;)Lcom/kingroot/kinguser/tk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/tk;->release()V

    .line 559
    :cond_0
    return-void
.end method
