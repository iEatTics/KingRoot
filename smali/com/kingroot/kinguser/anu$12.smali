.class Lcom/kingroot/kinguser/anu$12;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/anu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/anu;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/anu;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/kingroot/kinguser/anu$12;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 1

    .prologue
    .line 162
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    .line 163
    iget-object v0, p0, Lcom/kingroot/kinguser/anu$12;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-static {v0, p1, p3}, Lcom/kingroot/kinguser/anu;->a(Lcom/kingroot/kinguser/anu;Landroid/support/v7/widget/RecyclerView;I)V

    .line 164
    return-void
.end method
