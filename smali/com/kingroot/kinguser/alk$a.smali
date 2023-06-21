.class Lcom/kingroot/kinguser/alk$a;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/alk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field axM:Lcom/kingroot/common/uilib/ShapedImageView;

.field final synthetic axN:Lcom/kingroot/kinguser/alk;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/alk;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 70
    iput-object p1, p0, Lcom/kingroot/kinguser/alk$a;->axN:Lcom/kingroot/kinguser/alk;

    .line 71
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 72
    const v0, 0x7f0f00dd

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/uilib/ShapedImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/alk$a;->axM:Lcom/kingroot/common/uilib/ShapedImageView;

    .line 73
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/kingroot/kinguser/alk$a;->getAdapterPosition()I

    move-result v0

    .line 79
    iget-object v1, p0, Lcom/kingroot/kinguser/alk$a;->axN:Lcom/kingroot/kinguser/alk;

    invoke-static {v1}, Lcom/kingroot/kinguser/alk;->a(Lcom/kingroot/kinguser/alk;)Lcom/kingroot/kinguser/amr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/amr;->Iz()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 80
    iget-object v0, p0, Lcom/kingroot/kinguser/alk$a;->axN:Lcom/kingroot/kinguser/alk;

    invoke-static {v0}, Lcom/kingroot/kinguser/alk;->b(Lcom/kingroot/kinguser/alk;)Landroid/content/Context;

    move-result-object v2

    .line 81
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v3

    iget-object v0, p0, Lcom/kingroot/kinguser/alk$a;->axN:Lcom/kingroot/kinguser/alk;

    invoke-static {v0}, Lcom/kingroot/kinguser/alk;->a(Lcom/kingroot/kinguser/alk;)Lcom/kingroot/kinguser/amr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/amr;->IA()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kingroot/kinguser/alk$a;->getAdapterPosition()I

    move-result v4

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-static {v2, v0, v1}, Lcom/kingroot/kinguser/activitys/AppDownloadActivity;->c(Landroid/content/Context;Ljava/lang/String;I)V

    .line 83
    return-void
.end method
