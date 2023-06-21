.class Lcom/kingroot/kinguser/bfd$12;
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
    .line 678
    iput-object p1, p0, Lcom/kingroot/kinguser/bfd$12;->this$0:Lcom/kingroot/kinguser/bfd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public n(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 681
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd$12;->this$0:Lcom/kingroot/kinguser/bfd;

    invoke-static {v0}, Lcom/kingroot/kinguser/bfd;->v(Lcom/kingroot/kinguser/bfd;)Lcom/kingroot/kinguser/bid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bid;->dismiss()V

    .line 682
    return-void
.end method
