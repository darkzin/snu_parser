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
    #    -13(%ebp)   1  [ $t4       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t5       <char> %ebp-14 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 1 of <array 1 of <array 5 of <array 4 of <array 6 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <char> %ebp+16 ]
    #     20(%ebp)   1  [ %v4       <bool> %ebp+20 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $4, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 0(%esp)          

    # function body
    movl    $98, %eax               #   0:     return 98
    jmp     l_f0_exit              
    call    dummyCHARfunc           #   1:     call   t4 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    dummyCHARfunc           #   2:     call   t5 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   3:     return t5
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t16      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t17      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t18      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t19      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t20      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t21      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t22      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t23      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t24      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t25      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t26      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t4       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t5       <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t6       <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t7       <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t8       <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t9       <int> %ebp-104 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 5 of <array 3 of <array 3 of <array 3 of <array 1 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <int> %ebp+16 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $92, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $23, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $56936, %eax            #   0:     add    t4 <- 56936, 34871
    movl    $34871, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #   1:     add    t5 <- t4, 98614
    movl    $98614, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #   2:     sub    t6 <- t5, 86826
    movl    $86826, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #   3:     sub    t7 <- t6, 52315
    movl    $52315, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    $2, %eax                #   4:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #   5:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #   6:     call   t8 <- DIM
    addl    $8, %esp               
    movl    %eax, -100(%ebp)       
    movl    $58097, %eax            #   7:     mul    t9 <- 58097, t8
    movl    -100(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -104(%ebp)       
    movl    $777, %eax              #   8:     mul    t10 <- 777, 36596
    movl    $36596, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -104(%ebp), %eax        #   9:     add    t11 <- t9, t10
    movl    -16(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $3, %eax                #  10:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  11:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  12:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  13:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  14:     add    t14 <- t13, 12050
    movl    $12050, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $4, %eax                #  15:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  16:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  17:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  18:     mul    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  19:     add    t17 <- t16, 37333
    movl    $37333, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $5, %eax                #  20:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  21:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  22:     call   t18 <- DIM
    addl    $8, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  23:     mul    t19 <- t17, t18
    movl    -48(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  24:     add    t20 <- t19, 76311
    movl    $76311, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  25:     mul    t21 <- t20, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    12(%ebp), %eax          #  26:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  27:     call   t22 <- DOFS
    addl    $4, %esp               
    movl    %eax, -64(%ebp)        
    movl    -60(%ebp), %eax         #  28:     add    t23 <- t21, t22
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    12(%ebp), %eax          #  29:     add    t24 <- v2, t23
    movl    -68(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    -96(%ebp), %eax         #  30:     assign @t24 <- t7
    movl    -72(%ebp), %edi        
    movl    %eax, (%edi)           
    call    WriteLn                 #  31:     call   WriteLn
    call    ReadInt                 #  32:     call   t25 <- ReadInt
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  33:     mul    t26 <- t25, 55330
    movl    $55330, %ebx           
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  34:     param  0 <- t26
    pushl   %eax                   
    call    WriteInt                #  35:     call   WriteInt
    addl    $4, %esp               

l_f1_exit:
    # epilogue
    addl    $92, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t5       <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t6       <ptr(4) to <array 1 of <array 1 of <array 5 of <array 4 of <array 6 of <char>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t7       <char> %ebp-25 ]
    #    -32(%ebp)   4  [ $t8       <int> %ebp-32 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 5 of <array 8 of <array 5 of <array 8 of <array 8 of <int>>>>>>> %ebp+8 ]
    #   -176(%ebp)  144  [ $v2       <array 1 of <array 1 of <array 5 of <array 4 of <array 6 of <char>>>>>> %ebp-176 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $164, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $41, %ecx              
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-176(%ebp)           # local array 'v2': 5 dimensions
    movl    $1,-172(%ebp)           #   dimension 1: 1 elements
    movl    $1,-168(%ebp)           #   dimension 2: 1 elements
    movl    $5,-164(%ebp)           #   dimension 3: 5 elements
    movl    $4,-160(%ebp)           #   dimension 4: 4 elements
    movl    $6,-156(%ebp)           #   dimension 5: 6 elements

    # function body
    call    dummyINTfunc            #   0:     call   t4 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $100, %eax              #   1:     if     100 # 99 goto 2
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f2_2                 
    jmp     l_f2_3                  #   2:     goto   3
l_f2_2:
    movl    $1, %eax                #   4:     assign t5 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f2_4                  #   5:     goto   4
l_f2_3:
    movl    $0, %eax                #   7:     assign t5 <- 0
    movb    %al, -17(%ebp)         
l_f2_4:
    movzbl  -17(%ebp), %eax         #   9:     param  3 <- t5
    pushl   %eax                   
    movl    $98, %eax               #  10:     param  2 <- 98
    pushl   %eax                   
    movl    $26511, %eax            #  11:     param  1 <- 26511
    pushl   %eax                   
    leal    -176(%ebp), %eax        #  12:     &()    t6 <- v2
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  13:     param  0 <- t6
    pushl   %eax                   
    call    f0                      #  14:     call   t7 <- f0
    addl    $16, %esp              
    movb    %al, -25(%ebp)         
    call    dummyINTfunc            #  15:     call   t8 <- dummyINTfunc
    movl    %eax, -32(%ebp)        

l_f2_exit:
    # epilogue
    addl    $164, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t3       <char> %ebp-25 ]

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
l_test_1_while_cond:
    jmp     l_test_2_while_body     #   1:     goto   2_while_body
    jmp     l_test_0                #   2:     goto   0
l_test_2_while_body:
    movl    $99, %eax               #   4:     assign v0 <- 99
    movb    %al, v0                
    jmp     l_test_1_while_cond     #   5:     goto   1_while_cond
l_test_0:
    call    dummyINTfunc            #   7:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $44752, %eax            #   8:     sub    t1 <- 44752, 74065
    movl    $74065, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   9:     sub    t2 <- t1, 67673
    movl    $67673, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -16(%ebp), %eax         #  10:     if     t0 > t2 goto 6_if_true
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_test_6_if_true       
    jmp     l_test_7_if_false       #  11:     goto   7_if_false
l_test_6_if_true:
    jmp     l_test_5                #  13:     goto   5
l_test_7_if_false:
l_test_5:
    call    dummyCHARfunc           #  16:     call   t3 <- dummyCHARfunc
    movb    %al, -25(%ebp)         
    movl    $1, %eax                #  17:     if     1 # 0 goto 11_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_11_if_true      
    jmp     l_test_12_if_false      #  18:     goto   12_if_false
l_test_11_if_true:
l_test_15_while_cond:
    movl    $97969, %eax            #  21:     if     97969 > 69378 goto 16_while_body
    movl    $69378, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_16_while_body   
    jmp     l_test_14               #  22:     goto   14
l_test_16_while_body:
    jmp     l_test_15_while_cond    #  24:     goto   15_while_cond
l_test_14:
l_test_19_while_cond:
    movl    $62223, %eax            #  27:     if     62223 < 56173 goto 20_while_body
    movl    $56173, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_20_while_body   
    jmp     l_test_18               #  28:     goto   18
l_test_20_while_body:
    jmp     l_test_19_while_cond    #  30:     goto   19_while_cond
l_test_18:
    jmp     l_test_24_if_false      #  32:     goto   24_if_false
    jmp     l_test_22               #  33:     goto   22
l_test_24_if_false:
l_test_22:
    jmp     l_test_10               #  36:     goto   10
l_test_12_if_false:
l_test_10:
l_test_26_while_cond:
    jmp     l_test_27_while_body    #  40:     goto   27_while_body
    jmp     l_test_27_while_body    #  41:     goto   27_while_body
    jmp     l_test_27_while_body    #  42:     goto   27_while_body
    jmp     l_test_27_while_body    #  43:     goto   27_while_body
    jmp     l_test_25               #  44:     goto   25
l_test_27_while_body:
    jmp     l_test_26_while_cond    #  46:     goto   26_while_cond
l_test_25:

l_test_exit:
    # epilogue
    addl    $16, %esp               # remove locals
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
v0:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
