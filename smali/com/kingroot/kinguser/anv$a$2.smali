.class Lcom/kingroot/kinguser/anv$a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/apv$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/anv$a;->a(Lcom/kingroot/kinguser/anv$a$a;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aEu:Lcom/kingroot/kinguser/anv$a;

.field final synthetic aEv:Lcom/kingroot/kinguser/anv$a$a;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/anv$a;Lcom/kingroot/kinguser/anv$a$a;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcom/kingroot/kinguser/anv$a$2;->aEu:Lcom/kingroot/kinguser/anv$a;

    iput-object p2, p0, Lcom/kingroot/kinguser/anv$a$2;->aEv:Lcom/kingroot/kinguser/anv$a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 220
    new-instance v0, Lcom/kingroot/kinguser/anv$a$2$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/kingroot/kinguser/anv$a$2$1;-><init>(Lcom/kingroot/kinguser/anv$a$2;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 230
    return-void
.end method

.method public eE(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 234
    new-instance v0, Lcom/kingroot/kinguser/anv$a$2$2;

    invoke-direct {v0, p0, p1}, Lcom/kingroot/kinguser/anv$a$2$2;-><init>(Lcom/kingroot/kinguser/anv$a$2;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 244
    return-void
.end method
