.class Lcom/kingroot/kinguser/bii$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bii;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic btx:Lcom/kingroot/kinguser/bii;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bii;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/kingroot/kinguser/bii$1;->btx:Lcom/kingroot/kinguser/bii;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/kingroot/kinguser/bii$1;->btx:Lcom/kingroot/kinguser/bii;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bii;->dismiss()V

    .line 75
    return-void
.end method
