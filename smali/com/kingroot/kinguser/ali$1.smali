.class Lcom/kingroot/kinguser/ali$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/apv$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/ali;->a(Lcom/kingroot/kinguser/ali$a;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic awW:Lcom/kingroot/kinguser/ali$a;

.field final synthetic awX:Lcom/kingroot/kinguser/ali;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/ali;Lcom/kingroot/kinguser/ali$a;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/kingroot/kinguser/ali$1;->awX:Lcom/kingroot/kinguser/ali;

    iput-object p2, p0, Lcom/kingroot/kinguser/ali$1;->awW:Lcom/kingroot/kinguser/ali$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 74
    new-instance v0, Lcom/kingroot/kinguser/ali$1$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/kingroot/kinguser/ali$1$1;-><init>(Lcom/kingroot/kinguser/ali$1;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 87
    return-void
.end method

.method public eE(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 91
    return-void
.end method
