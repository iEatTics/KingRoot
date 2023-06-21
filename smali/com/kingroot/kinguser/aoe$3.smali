.class Lcom/kingroot/kinguser/aoe$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/apv$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/aoe;->oG()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aFg:Lcom/kingroot/kinguser/aoe;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/aoe;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/kingroot/kinguser/aoe$3;->aFg:Lcom/kingroot/kinguser/aoe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 147
    new-instance v0, Lcom/kingroot/kinguser/aoe$3$1;

    invoke-direct {v0, p0, p2}, Lcom/kingroot/kinguser/aoe$3$1;-><init>(Lcom/kingroot/kinguser/aoe$3;Landroid/graphics/Bitmap;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 154
    return-void
.end method

.method public eE(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 159
    return-void
.end method
