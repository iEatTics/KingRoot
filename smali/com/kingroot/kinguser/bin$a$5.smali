.class Lcom/kingroot/kinguser/bin$a$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bin$a;->d(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic btN:Lcom/kingroot/kinguser/bin$a;

.field final synthetic btP:Ljava/lang/String;

.field final synthetic btQ:I


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bin$a;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 640
    iput-object p1, p0, Lcom/kingroot/kinguser/bin$a$5;->btN:Lcom/kingroot/kinguser/bin$a;

    iput-object p2, p0, Lcom/kingroot/kinguser/bin$a$5;->btP:Ljava/lang/String;

    iput p3, p0, Lcom/kingroot/kinguser/bin$a$5;->btQ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 642
    iget-object v0, p0, Lcom/kingroot/kinguser/bin$a$5;->btN:Lcom/kingroot/kinguser/bin$a;

    iget-object v1, p0, Lcom/kingroot/kinguser/bin$a$5;->btP:Ljava/lang/String;

    iget v2, p0, Lcom/kingroot/kinguser/bin$a$5;->btQ:I

    const/16 v3, 0x280

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/kingroot/kinguser/bin$a;->a(Lcom/kingroot/kinguser/bin$a;Ljava/lang/String;ILjava/lang/Object;)V

    .line 645
    return-void
.end method
