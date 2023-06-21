.class final Lcom/kingroot/kinguser/zj$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/zj;->c(Ljava/lang/CharSequence;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic Wy:Ljava/lang/CharSequence;

.field final synthetic Wz:I


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;I)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/kingroot/kinguser/zj$1;->Wy:Ljava/lang/CharSequence;

    iput p2, p0, Lcom/kingroot/kinguser/zj$1;->Wz:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/kingroot/kinguser/zj$1;->Wy:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/kingroot/kinguser/zj$1;->Wz:I

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/zj;->d(Ljava/lang/CharSequence;I)V

    .line 147
    return-void
.end method
