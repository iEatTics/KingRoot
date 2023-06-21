.class Lcom/kingroot/kinguser/asr$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/apv$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/asr$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aNu:Lcom/kingroot/kinguser/asr$a;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/asr$a;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/kingroot/kinguser/asr$a$1;->aNu:Lcom/kingroot/kinguser/asr$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 110
    new-instance v0, Lcom/kingroot/kinguser/asr$a$1$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/kingroot/kinguser/asr$a$1$1;-><init>(Lcom/kingroot/kinguser/asr$a$1;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 123
    return-void
.end method

.method public eE(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 127
    return-void
.end method
