.class Lcom/kingroot/kinguser/bfz$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/bic$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bfz;->abk()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bod:Lcom/kingroot/kinguser/bfz;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bfz;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/kingroot/kinguser/bfz$2;->bod:Lcom/kingroot/kinguser/bfz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 141
    if-eqz p2, :cond_0

    .line 142
    invoke-static {}, Lcom/kingroot/kinguser/bfw;->aaS()Lcom/kingroot/kinguser/bfw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bfw;->aba()V

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bfz$2;->bod:Lcom/kingroot/kinguser/bfz;

    invoke-static {v0}, Lcom/kingroot/kinguser/bfz;->b(Lcom/kingroot/kinguser/bfz;)V

    .line 146
    return-void
.end method
