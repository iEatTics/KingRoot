.class Lcom/kingroot/kinguser/atp$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/apv$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/atp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aPL:Lcom/kingroot/kinguser/atp;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/atp;)V
    .locals 0

    .prologue
    .line 354
    iput-object p1, p0, Lcom/kingroot/kinguser/atp$4;->aPL:Lcom/kingroot/kinguser/atp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 359
    new-instance v0, Lcom/kingroot/kinguser/atp$4$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/kingroot/kinguser/atp$4$1;-><init>(Lcom/kingroot/kinguser/atp$4;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 372
    return-void
.end method

.method public eE(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 376
    return-void
.end method
