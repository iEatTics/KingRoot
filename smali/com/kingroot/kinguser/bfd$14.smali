.class Lcom/kingroot/kinguser/bfd$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/bid$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bfd;->Ue()V
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
    .line 207
    iput-object p1, p0, Lcom/kingroot/kinguser/bfd$14;->this$0:Lcom/kingroot/kinguser/bfd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public n(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd$14;->this$0:Lcom/kingroot/kinguser/bfd;

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bfd;->b(Lcom/kingroot/kinguser/bfd;I)V

    .line 211
    return-void
.end method
