.class Lcom/kingroot/kinguser/bhw$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bhw;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bsc:Lcom/kingroot/kinguser/bhw;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bhw;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/kingroot/kinguser/bhw$2;->bsc:Lcom/kingroot/kinguser/bhw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/kingroot/kinguser/bhw$2;->bsc:Lcom/kingroot/kinguser/bhw;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bhw;->dismiss()V

    .line 57
    return-void
.end method
