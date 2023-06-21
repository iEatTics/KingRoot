.class Lcom/kingroot/kinguser/aph$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/apv$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/aph;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/kingroot/kinguser/api$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Ap:Landroid/widget/ImageView;

.field final synthetic aHJ:Ljava/lang/String;

.field final synthetic aHK:Lcom/kingroot/kinguser/api$a;

.field final synthetic aHL:Lcom/kingroot/kinguser/aph;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/aph;Ljava/lang/String;Landroid/widget/ImageView;Lcom/kingroot/kinguser/api$a;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/kingroot/kinguser/aph$2;->aHL:Lcom/kingroot/kinguser/aph;

    iput-object p2, p0, Lcom/kingroot/kinguser/aph$2;->aHJ:Ljava/lang/String;

    iput-object p3, p0, Lcom/kingroot/kinguser/aph$2;->Ap:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/kingroot/kinguser/aph$2;->aHK:Lcom/kingroot/kinguser/api$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/kingroot/kinguser/aph$2$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/kingroot/kinguser/aph$2$1;-><init>(Lcom/kingroot/kinguser/aph$2;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 65
    return-void
.end method

.method public eE(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 69
    new-instance v0, Lcom/kingroot/kinguser/aph$2$2;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/aph$2$2;-><init>(Lcom/kingroot/kinguser/aph$2;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 75
    return-void
.end method
