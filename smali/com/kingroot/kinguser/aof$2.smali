.class Lcom/kingroot/kinguser/aof$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/apv$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/aof;->d(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/aof;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/aof;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/kingroot/kinguser/aof$2;->this$0:Lcom/kingroot/kinguser/aof;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 102
    new-instance v0, Lcom/kingroot/kinguser/aof$2$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/kingroot/kinguser/aof$2$1;-><init>(Lcom/kingroot/kinguser/aof$2;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 110
    return-void
.end method

.method public eE(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 114
    return-void
.end method
