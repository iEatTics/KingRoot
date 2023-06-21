.class Lcom/kingroot/kinguser/agd$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingcore/uilib/ProgressWhell$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/agd;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic akF:Lcom/kingcore/uilib/ProgressWhell;

.field final synthetic akG:Lcom/kingroot/kinguser/agd;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/agd;Lcom/kingcore/uilib/ProgressWhell;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/kingroot/kinguser/agd$1;->akG:Lcom/kingroot/kinguser/agd;

    iput-object p2, p0, Lcom/kingroot/kinguser/agd$1;->akF:Lcom/kingcore/uilib/ProgressWhell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(F)V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 74
    cmpl-float v0, p1, v1

    if-nez v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/kingroot/kinguser/agd$1;->akF:Lcom/kingcore/uilib/ProgressWhell;

    invoke-virtual {v0, v2}, Lcom/kingcore/uilib/ProgressWhell;->setProgress(F)V

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    cmpl-float v0, p1, v2

    if-nez v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/kingroot/kinguser/agd$1;->akF:Lcom/kingcore/uilib/ProgressWhell;

    invoke-virtual {v0, v1}, Lcom/kingcore/uilib/ProgressWhell;->setProgress(F)V

    goto :goto_0
.end method
