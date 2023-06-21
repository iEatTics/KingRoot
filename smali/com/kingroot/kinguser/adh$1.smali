.class Lcom/kingroot/kinguser/adh$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/adh;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic acw:Lcom/kingroot/kinguser/adh;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/adh;)V
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/kingroot/kinguser/adh$1;->acw:Lcom/kingroot/kinguser/adh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x1

    return v0
.end method
