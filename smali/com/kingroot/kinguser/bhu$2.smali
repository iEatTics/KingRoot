.class Lcom/kingroot/kinguser/bhu$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bhu;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic brq:Lcom/kingroot/kinguser/bhu;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bhu;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/kingroot/kinguser/bhu$2;->brq:Lcom/kingroot/kinguser/bhu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/kingroot/kinguser/bhu$2;->brq:Lcom/kingroot/kinguser/bhu;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bhu;->dismiss()V

    .line 92
    return-void
.end method
