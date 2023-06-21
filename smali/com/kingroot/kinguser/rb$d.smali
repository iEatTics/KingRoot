.class Lcom/kingroot/kinguser/rb$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/rb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# instance fields
.field public fromX:I

.field public fromY:I

.field public holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

.field public toX:I

.field public toY:I


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/kingroot/kinguser/rb$d;->holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 59
    iput p2, p0, Lcom/kingroot/kinguser/rb$d;->fromX:I

    .line 60
    iput p3, p0, Lcom/kingroot/kinguser/rb$d;->fromY:I

    .line 61
    iput p4, p0, Lcom/kingroot/kinguser/rb$d;->toX:I

    .line 62
    iput p5, p0, Lcom/kingroot/kinguser/rb$d;->toY:I

    .line 63
    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIIILcom/kingroot/kinguser/rb$1;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct/range {p0 .. p5}, Lcom/kingroot/kinguser/rb$d;-><init>(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)V

    return-void
.end method
