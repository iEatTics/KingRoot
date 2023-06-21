.class Lcom/kingroot/kinguser/bfd$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/bid$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bfd;->ZJ()V
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
    .line 685
    iput-object p1, p0, Lcom/kingroot/kinguser/bfd$13;->this$0:Lcom/kingroot/kinguser/bfd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public n(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 688
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd$13;->this$0:Lcom/kingroot/kinguser/bfd;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bfd;->c(Lcom/kingroot/kinguser/bfd;I)I

    .line 690
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd$13;->this$0:Lcom/kingroot/kinguser/bfd;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bfd;->b(Lcom/kingroot/kinguser/bfd;I)V

    .line 691
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd$13;->this$0:Lcom/kingroot/kinguser/bfd;

    .line 692
    invoke-static {v0}, Lcom/kingroot/kinguser/bfd;->a(Lcom/kingroot/kinguser/bfd;)Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->pkgName:Ljava/lang/String;

    iget-object v1, p0, Lcom/kingroot/kinguser/bfd$13;->this$0:Lcom/kingroot/kinguser/bfd;

    .line 693
    invoke-static {v1}, Lcom/kingroot/kinguser/bfd;->p(Lcom/kingroot/kinguser/bfd;)I

    move-result v1

    const-string v2, "Roottool"

    .line 691
    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/apd;->c(Ljava/lang/String;ILjava/lang/String;)V

    .line 695
    return-void
.end method
