.class Lcom/kingroot/kinguser/bfa$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/apv$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bfa;->b(Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blS:Lcom/kingroot/kinguser/bfa;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bfa;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/kingroot/kinguser/bfa$1;->blS:Lcom/kingroot/kinguser/bfa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 56
    new-instance v0, Lcom/kingroot/kinguser/bfa$1$1;

    invoke-direct {v0, p0, p2}, Lcom/kingroot/kinguser/bfa$1$1;-><init>(Lcom/kingroot/kinguser/bfa$1;Landroid/graphics/Bitmap;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 62
    return-void
.end method

.method public eE(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 67
    return-void
.end method
