.class Lcom/kingroot/kinguser/bik$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bik;->a(Ljava/lang/String;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic brQ:I

.field final synthetic btA:Lcom/kingroot/kinguser/bik;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bik;I)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/kingroot/kinguser/bik$4;->btA:Lcom/kingroot/kinguser/bik;

    iput p2, p0, Lcom/kingroot/kinguser/bik$4;->brQ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/kingroot/kinguser/bik$4;->btA:Lcom/kingroot/kinguser/bik;

    iget v1, p0, Lcom/kingroot/kinguser/bik$4;->brQ:I

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bik;->b(Lcom/kingroot/kinguser/bik;I)V

    .line 194
    return-void
.end method
