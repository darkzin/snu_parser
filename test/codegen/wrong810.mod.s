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
    #    -72(%ebp)   4  [ $t3       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t4       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t5       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t6       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t7       <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t8       <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t9       <int> %ebp-96 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 7 of <array 8 of <array 1 of <array 5 of <array 4 of <char>>>>>>> %ebp+8 ]
    #    -97(%ebp)   1  [ $v1       <char> %ebp-97 ]
    #   -104(%ebp)   4  [ $v2       <int> %ebp-104 ]

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
    movl    $2, %eax                #   0:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #   1:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #   2:     call   t3 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    $38742, %eax            #   3:     mul    t4 <- 38742, t3
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #   4:     add    t5 <- t4, 68580
    movl    $68580, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $3, %eax                #   5:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #   6:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #   7:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    -80(%ebp), %eax         #   8:     mul    t7 <- t5, t6
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #   9:     add    t8 <- t7, 96703
    movl    $96703, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    $4, %eax                #  10:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  11:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  12:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -96(%ebp)        
    movl    -92(%ebp), %eax         #  13:     mul    t10 <- t8, t9
    movl    -96(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    $29675, %eax            #  14:     div    t11 <- 29675, 48423
    movl    $48423, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  15:     mul    t12 <- t11, 45778
    movl    $45778, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  16:     div    t13 <- t12, 10890
    movl    $10890, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -16(%ebp), %eax         #  17:     add    t14 <- t10, t13
    movl    -28(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $5, %eax                #  18:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  19:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  20:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  21:     mul    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  22:     add    t17 <- t16, 2771
    movl    $2771, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  23:     mul    t18 <- t17, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    8(%ebp), %eax           #  24:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  25:     call   t19 <- DOFS
    addl    $4, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  26:     add    t20 <- t18, t19
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    8(%ebp), %eax           #  27:     add    t21 <- v0, t20
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    $97, %eax               #  28:     assign @t21 <- 97
    movl    -60(%ebp), %edi        
    movb    %al, (%edi)            
    movl    $78605, %eax            #  29:     add    t22 <- 78605, 96596
    movl    $96596, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  30:     add    t23 <- t22, 78749
    movl    $78749, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  31:     assign v2 <- t23
    movl    %eax, -104(%ebp)       
    call    WriteLn                 #  32:     call   WriteLn

l_f0_exit:
    # epilogue
    addl    $92, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 4 of <array 10 of <array 1 of <array 10 of <array 10 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #    -32(%ebp)   4  [ $v2       <int> %ebp-32 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $20, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $5, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    jmp     l_f1_4                  #   0:     goto   4
    jmp     l_f1_4                  #   1:     goto   4
l_f1_4:
    jmp     l_f1_1_if_true          #   3:     goto   1_if_true
l_f1_1_if_true:
    jmp     l_f1_0                  #   5:     goto   0
l_f1_0:
    movl    $100, %eax              #   7:     if     100 = 98 goto 9_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_f1_9_if_true         
    jmp     l_f1_10_if_false        #   8:     goto   10_if_false
l_f1_9_if_true:
    call    dummyCHARfunc           #  10:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $86620, %eax            #  11:     if     86620 < 54274 goto 14_if_true
    movl    $54274, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_14_if_true        
    jmp     l_f1_15_if_false        #  12:     goto   15_if_false
l_f1_14_if_true:
    jmp     l_f1_13                 #  14:     goto   13
l_f1_15_if_false:
l_f1_13:
    movl    $88581, %eax            #  17:     assign v2 <- 88581
    movl    %eax, -32(%ebp)        
    jmp     l_f1_8                  #  18:     goto   8
l_f1_10_if_false:
l_f1_8:
    call    ReadInt                 #  21:     call   t4 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  22:     div    t5 <- t4, 68741
    movl    $68741, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  23:     div    t6 <- t5, 96589
    movl    $96589, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  24:     return t6
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <ptr(4) to <array 7 of <array 8 of <array 1 of <array 5 of <array 4 of <char>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t5       <char> %ebp-21 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 5 of <array 1 of <array 3 of <array 1 of <array 4 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 1 of <array 3 of <array 1 of <array 8 of <array 4 of <char>>>>>>> %ebp+16 ]
    #   -1168(%ebp)  1144  [ $v3       <array 7 of <array 8 of <array 1 of <array 5 of <array 4 of <char>>>>>> %ebp-1168 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $1156, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $289, %ecx             
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-1168(%ebp)          # local array 'v3': 5 dimensions
    movl    $7,-1164(%ebp)          #   dimension 1: 7 elements
    movl    $8,-1160(%ebp)          #   dimension 2: 8 elements
    movl    $1,-1156(%ebp)          #   dimension 3: 1 elements
    movl    $5,-1152(%ebp)          #   dimension 4: 5 elements
    movl    $4,-1148(%ebp)          #   dimension 5: 4 elements

    # function body
    call    ReadInt                 #   0:     call   t3 <- ReadInt
    movl    %eax, -16(%ebp)        
    jmp     l_f2_3_if_false         #   1:     goto   3_if_false
l_f2_5_while_cond:
    movl    $98, %eax               #   3:     if     98 <= 99 goto 6_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_6_while_body      
    jmp     l_f2_4                  #   4:     goto   4
l_f2_6_while_body:
    jmp     l_f2_5_while_cond       #   6:     goto   5_while_cond
l_f2_4:
    movl    $97, %eax               #   8:     assign v1 <- 97
    movb    %al, 12(%ebp)          
    jmp     l_f2_1                  #   9:     goto   1
l_f2_3_if_false:
l_f2_1:
    leal    -1168(%ebp), %eax       #  12:     &()    t4 <- v3
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  13:     param  0 <- t4
    pushl   %eax                   
    call    f0                      #  14:     call   t5 <- f0
    addl    $4, %esp               
    movb    %al, -21(%ebp)         
    movl    $99, %eax               #  15:     if     99 <= t5 goto 10_if_true
    movzbl  -21(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f2_10_if_true        
    jmp     l_f2_11_if_false        #  16:     goto   11_if_false
l_f2_10_if_true:
l_f2_14_while_cond:
    movl    $39733, %eax            #  19:     if     39733 > 90075 goto 15_while_body
    movl    $90075, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_15_while_body     
    jmp     l_f2_13                 #  20:     goto   13
l_f2_15_while_body:
    jmp     l_f2_14_while_cond      #  22:     goto   14_while_cond
l_f2_13:
    movl    $99, %eax               #  24:     return 99
    jmp     l_f2_exit              
l_f2_19_while_cond:
    jmp     l_f2_19_while_cond      #  26:     goto   19_while_cond
    jmp     l_f2_9                  #  27:     goto   9
l_f2_11_if_false:
l_f2_9:

l_f2_exit:
    # epilogue
    addl    $1156, %esp             # remove locals
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

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $12, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    jmp     l_test_exit            
l_test_2_while_cond:
    movl    $99, %eax               #   2:     if     99 > 99 goto 3_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_3_while_body    
    jmp     l_test_1                #   3:     goto   1
l_test_3_while_body:
    jmp     l_test_exit            
    jmp     l_test_2_while_cond     #   6:     goto   2_while_cond
l_test_1:
l_test_7_while_cond:
    movl    $54219, %eax            #   9:     sub    t0 <- 54219, 85535
    movl    $85535, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  10:     sub    t1 <- t0, 37070
    movl    $37070, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  11:     add    t2 <- t1, 6322
    movl    $6322, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $18346, %eax            #  12:     if     18346 = t2 goto 8_while_body
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_test_8_while_body    
    jmp     l_test_6                #  13:     goto   6
l_test_8_while_body:
    jmp     l_test_7_while_cond     #  15:     goto   7_while_cond
l_test_6:

l_test_exit:
    # epilogue
    addl    $12, %esp               # remove locals
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









    # end of global data section
    #-----------------------------------------

    .end
##################################################
