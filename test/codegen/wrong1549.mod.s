##################################################
# test
#

    #-----------------------------------------
    # text section
    #
    .text
    .align 4

    # entry point and pre-defined functions
    .global main
    .extern DIM
    .extern DOFS
    .extern ReadInt
    .extern WriteInt
    .extern WriteStr
    .extern WriteChar
    .extern WriteLn

    # scope dummyINTfunc
dummyINTfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyINTfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyCHARfunc
dummyCHARfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyCHARfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyBOOLfunc
dummyBOOLfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyBOOLfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyProcedure
dummyProcedure:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyProcedure_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f0
f0:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t3       <char> %ebp-22 ]
    #    -23(%ebp)   1  [ $v0       <bool> %ebp-23 ]
    #    -28(%ebp)   4  [ $v1       <int> %ebp-28 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $16, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 12(%esp)         
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    movl    $88689, %eax            #   0:     add    t0 <- 88689, 60719
    movl    $60719, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     add    t1 <- t0, 64609
    movl    $64609, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     if     t1 >= 22633 goto 1
    movl    $22633, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_1                 
    jmp     l_f0_2                  #   3:     goto   2
l_f0_1:
    movl    $1, %eax                #   5:     assign t2 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f0_3                  #   6:     goto   3
l_f0_2:
    movl    $0, %eax                #   8:     assign t2 <- 0
    movb    %al, -21(%ebp)         
l_f0_3:
    movzbl  -21(%ebp), %eax         #  10:     assign v0 <- t2
    movb    %al, -23(%ebp)         
    call    dummyCHARfunc           #  11:     call   t3 <- dummyCHARfunc
    movb    %al, -22(%ebp)         
    movl    $62995, %eax            #  12:     assign v1 <- 62995
    movl    %eax, -28(%ebp)        

l_f0_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t10      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t11      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t12      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t13      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t14      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t15      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t16      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t17      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t18      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t19      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t2       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t20      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t21      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t22      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t23      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t24      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t25      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t26      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t27      <int> %ebp-96 ]
    #    -97(%ebp)   1  [ $t3       <bool> %ebp-97 ]
    #    -98(%ebp)   1  [ $t4       <char> %ebp-98 ]
    #    -99(%ebp)   1  [ $t5       <bool> %ebp-99 ]
    #   -104(%ebp)   4  [ $t6       <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t7       <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t8       <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t9       <int> %ebp-116 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 78 of <array 78 of <array 34 of <array 61 of <array 82 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $104, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $26, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $63539, %eax            #   0:     add    t0 <- 63539, 84332
    movl    $84332, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $40576, %eax            #   1:     sub    t1 <- 40576, 88806
    movl    $88806, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     sub    t2 <- t1, 29491
    movl    $29491, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    -16(%ebp), %eax         #   3:     if     t0 < t2 goto 1
    movl    -64(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f1_1                 
    jmp     l_f1_2                  #   4:     goto   2
l_f1_1:
    movl    $1, %eax                #   6:     assign t3 <- 1
    movb    %al, -97(%ebp)         
    jmp     l_f1_3                  #   7:     goto   3
l_f1_2:
    movl    $0, %eax                #   9:     assign t3 <- 0
    movb    %al, -97(%ebp)         
l_f1_3:
    movzbl  -97(%ebp), %eax         #  11:     return t3
    jmp     l_f1_exit              
    call    dummyCHARfunc           #  12:     call   t4 <- dummyCHARfunc
    movb    %al, -98(%ebp)         
    movzbl  -98(%ebp), %eax         #  13:     if     t4 < 100 goto 6
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f1_6                 
    jmp     l_f1_7                  #  14:     goto   7
l_f1_6:
    movl    $1, %eax                #  16:     assign t5 <- 1
    movb    %al, -99(%ebp)         
    jmp     l_f1_8                  #  17:     goto   8
l_f1_7:
    movl    $0, %eax                #  19:     assign t5 <- 0
    movb    %al, -99(%ebp)         
l_f1_8:
    movzbl  -99(%ebp), %eax         #  21:     return t5
    jmp     l_f1_exit              
    movl    $95479, %eax            #  22:     add    t6 <- 95479, 67518
    movl    $67518, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -104(%ebp)       
    movl    -104(%ebp), %eax        #  23:     sub    t7 <- t6, 9639
    movl    $9639, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -108(%ebp)       
    movl    -108(%ebp), %eax        #  24:     add    t8 <- t7, 37293
    movl    $37293, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -112(%ebp)       
    movl    $2, %eax                #  25:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  26:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  27:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -116(%ebp)       
    movl    -112(%ebp), %eax        #  28:     mul    t10 <- t8, t9
    movl    -116(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    $76038, %eax            #  29:     div    t11 <- 76038, 17374
    movl    $17374, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  30:     mul    t12 <- t11, 31550
    movl    $31550, %ebx           
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  31:     div    t13 <- t12, 22601
    movl    $22601, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -24(%ebp), %eax         #  32:     add    t14 <- t10, t13
    movl    -36(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $3, %eax                #  33:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  34:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  35:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  36:     mul    t16 <- t14, t15
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  37:     add    t17 <- t16, 85911
    movl    $85911, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $4, %eax                #  38:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  39:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  40:     call   t18 <- DIM
    addl    $8, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  41:     mul    t19 <- t17, t18
    movl    -56(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  42:     add    t20 <- t19, 84669
    movl    $84669, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $5, %eax                #  43:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  44:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  45:     call   t21 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  46:     mul    t22 <- t20, t21
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  47:     add    t23 <- t22, 32456
    movl    $32456, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  48:     mul    t24 <- t23, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    8(%ebp), %eax           #  49:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  50:     call   t25 <- DOFS
    addl    $4, %esp               
    movl    %eax, -88(%ebp)        
    movl    -84(%ebp), %eax         #  51:     add    t26 <- t24, t25
    movl    -88(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    8(%ebp), %eax           #  52:     add    t27 <- v0, t26
    movl    -92(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    $1, %eax                #  53:     assign @t27 <- 1
    movl    -96(%ebp), %edi        
    movb    %al, (%edi)            

l_f1_exit:
    # epilogue
    addl    $104, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $v0       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $v1       <int> %ebp-20 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $8, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
l_f2_1_while_cond:
    jmp     l_f2_4                  #   1:     goto   4
l_f2_4:
    movl    $1, %eax                #   3:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_6                  #   4:     goto   6
    movl    $0, %eax                #   5:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_f2_6:
    movzbl  -13(%ebp), %eax         #   7:     assign v0 <- t0
    movb    %al, -14(%ebp)         
    jmp     l_f2_1_while_cond       #   8:     goto   1_while_cond
    jmp     l_f2_12_if_false        #   9:     goto   12_if_false
    movl    $0, %eax                #  10:     return 0
    jmp     l_f2_exit              
    movl    $36468, %eax            #  11:     assign v1 <- 36468
    movl    %eax, -20(%ebp)        
l_f2_16_while_cond:
    jmp     l_f2_16_while_cond      #  13:     goto   16_while_cond
    jmp     l_f2_10                 #  14:     goto   10
l_f2_12_if_false:
l_f2_10:
    call    WriteLn                 #  17:     call   WriteLn

l_f2_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
    jmp     l_test_2_if_false       #   0:     goto   2_if_false
    jmp     l_test_exit            
l_test_6_while_cond:
    movl    $98, %eax               #   3:     if     98 > 99 goto 7_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_7_while_body    
    jmp     l_test_5                #   4:     goto   5
l_test_7_while_body:
    jmp     l_test_6_while_cond     #   6:     goto   6_while_cond
l_test_5:
    jmp     l_test_exit            
    jmp     l_test_0                #   9:     goto   0
l_test_2_if_false:
l_test_0:
l_test_11_while_cond:
    jmp     l_test_10               #  13:     goto   10
    jmp     l_test_10               #  14:     goto   10
    jmp     l_test_exit            
    movl    $94302, %eax            #  16:     assign v0 <- 94302
    movl    %eax, v0               
    jmp     l_test_11_while_cond    #  17:     goto   11_while_cond
l_test_10:
    jmp     l_test_20_if_false      #  19:     goto   20_if_false
    jmp     l_test_20_if_false      #  20:     goto   20_if_false
    jmp     l_test_20_if_false      #  21:     goto   20_if_false
    jmp     l_test_20_if_false      #  22:     goto   20_if_false
    jmp     l_test_20_if_false      #  23:     goto   20_if_false
    jmp     l_test_18               #  24:     goto   18
l_test_20_if_false:
l_test_18:
    movl    $99, %eax               #  27:     assign v1 <- 99
    movb    %al, v1                

l_test_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # end of text section
    #-----------------------------------------

    #-----------------------------------------
    # global data section
    #
    .data
    .align 4

    # scope: test
v0:                                 # <int>
    .skip    4
v1:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
