.class Lcom/kingroot/kinguser/ale$b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/apv$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/ale$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic awo:Lcom/kingroot/kinguser/ale$b;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/ale$b;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/kingroot/kinguser/ale$b$1;->awo:Lcom/kingroot/kinguser/ale$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 245
    new-instance v0, Lcom/kingroot/kinguser/ale$b$1$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/kingroot/kinguser/ale$b$1$1;-><init>(Lcom/kingroot/kinguser/ale$b$1;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 258
    return-void
.end method

.method public eE(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 262
    return-void
.end method
