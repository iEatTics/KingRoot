.class Lcom/kingroot/kinguser/axi$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/apv$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axi;->oG()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/axi;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axi;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/kingroot/kinguser/axi$7;->this$0:Lcom/kingroot/kinguser/axi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 167
    new-instance v0, Lcom/kingroot/kinguser/axi$7$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/kingroot/kinguser/axi$7$1;-><init>(Lcom/kingroot/kinguser/axi$7;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 186
    return-void
.end method

.method public eE(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 191
    return-void
.end method
