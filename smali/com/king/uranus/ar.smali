.class public Lcom/king/uranus/ar;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field private dx:I

.field private dy:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 20
    iput p1, p0, Lcom/king/uranus/ar;->dx:I

    .line 21
    iput-object p2, p0, Lcom/king/uranus/ar;->dy:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public cS()I
    .locals 1

    .prologue
    .line 11
    iget v0, p0, Lcom/king/uranus/ar;->dx:I

    return v0
.end method
