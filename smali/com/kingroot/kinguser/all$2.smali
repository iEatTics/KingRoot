.class Lcom/kingroot/kinguser/all$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/apv$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/all;->a(Lcom/kingroot/kinguser/all$a;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic axP:Lcom/kingroot/kinguser/all$a;

.field final synthetic axQ:Lcom/kingroot/kinguser/all;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/all;Lcom/kingroot/kinguser/all$a;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/kingroot/kinguser/all$2;->axQ:Lcom/kingroot/kinguser/all;

    iput-object p2, p0, Lcom/kingroot/kinguser/all$2;->axP:Lcom/kingroot/kinguser/all$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lcom/kingroot/kinguser/all$2$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/kingroot/kinguser/all$2$1;-><init>(Lcom/kingroot/kinguser/all$2;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 75
    return-void
.end method

.method public eE(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 80
    return-void
.end method
