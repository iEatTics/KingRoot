.class Lcom/kingroot/kinguser/ale$d$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/ale$d;->a(Lcom/kingroot/kinguser/ame;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic awr:Lcom/kingroot/kinguser/ale$d;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/ale$d;)V
    .locals 0

    .prologue
    .line 338
    iput-object p1, p0, Lcom/kingroot/kinguser/ale$d$2;->awr:Lcom/kingroot/kinguser/ale$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/kingroot/kinguser/ale$d$2;->awr:Lcom/kingroot/kinguser/ale$d;

    iget-object v0, v0, Lcom/kingroot/kinguser/ale$d;->awk:Lcom/kingcore/uilib/ExpandableTextView;

    invoke-virtual {v0}, Lcom/kingcore/uilib/ExpandableTextView;->gI()Z

    move-result v0

    if-nez v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/kingroot/kinguser/ale$d$2;->awr:Lcom/kingroot/kinguser/ale$d;

    iget-object v0, v0, Lcom/kingroot/kinguser/ale$d;->awk:Lcom/kingcore/uilib/ExpandableTextView;

    invoke-virtual {v0}, Lcom/kingcore/uilib/ExpandableTextView;->gG()Z

    .line 344
    :cond_0
    return-void
.end method
