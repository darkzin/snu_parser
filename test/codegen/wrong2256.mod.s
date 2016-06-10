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
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t5       <bool> %ebp-17 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 20 of <array 67 of <array 14 of <array 8 of <array 8 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 32 of <array 39 of <array 33 of <array 76 of <array 4 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #    -18(%ebp)   1  [ $v3       <bool> %ebp-18 ]

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
    movl    $97, %eax               #   0:     if     97 < 97 goto 1_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
    movl    $98, %eax               #   3:     param  0 <- 98
    pushl   %eax                   
    call    WriteChar               #   4:     call   WriteChar
    addl    $4, %esp               
    call    ReadInt                 #   5:     call   t4 <- ReadInt
    movl    %eax, -16(%ebp)        
    jmp     l_f0_0                  #   6:     goto   0
l_f0_2_if_false:
l_f0_0:
    call    WriteLn                 #   9:     call   WriteLn
    movl    $97, %eax               #  10:     if     97 # 100 goto 8
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_f0_8                 
    jmp     l_f0_9                  #  11:     goto   9
l_f0_8:
    movl    $1, %eax                #  13:     assign t5 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f0_10                 #  14:     goto   10
l_f0_9:
    movl    $0, %eax                #  16:     assign t5 <- 0
    movb    %al, -17(%ebp)         
l_f0_10:
    movzbl  -17(%ebp), %eax         #  18:     assign v3 <- t5
    movb    %al, -18(%ebp)         

l_f0_exit:
    # epilogue
    addl    $8, %esp                # remove locals
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
    #    -36(%ebp)   4  [ $t4       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t5       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t6       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t7       <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t8       <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t9       <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $v0       <int> %ebp-60 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $48, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $12, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_f1_1_while_cond:
    movl    $48725, %eax            #   1:     div    t4 <- 48725, 2783
    movl    $2783, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    $38425, %eax            #   2:     add    t5 <- 38425, 64790
    movl    $64790, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #   3:     if     t4 < t5 goto 2_while_body
    movl    -40(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f1_2_while_body      
    jmp     l_f1_0                  #   4:     goto   0
l_f1_2_while_body:
    jmp     l_f1_1_while_cond       #   6:     goto   1_while_cond
l_f1_0:
    movl    $64381, %eax            #   8:     add    t6 <- 64381, 86491
    movl    $86491, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #   9:     sub    t7 <- t6, 50343
    movl    $50343, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  10:     sub    t8 <- t7, 35855
    movl    $35855, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  11:     add    t9 <- t8, 46092
    movl    $46092, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  12:     sub    t10 <- t9, 32935
    movl    $32935, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $42281, %eax            #  13:     if     42281 >= t10 goto 5_if_true
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f1_5_if_true         
    jmp     l_f1_6_if_false         #  14:     goto   6_if_false
l_f1_5_if_true:
l_f1_9_while_cond:
    movl    $93282, %eax            #  17:     if     93282 <= 51487 goto 10_while_body
    movl    $51487, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_10_while_body     
    jmp     l_f1_8                  #  18:     goto   8
l_f1_10_while_body:
    jmp     l_f1_9_while_cond       #  20:     goto   9_while_cond
l_f1_8:
    movl    $54979, %eax            #  22:     param  0 <- 54979
    pushl   %eax                   
    call    WriteInt                #  23:     call   WriteInt
    addl    $4, %esp               
    call    ReadInt                 #  24:     call   t11 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    $22467, %eax            #  25:     return 22467
    jmp     l_f1_exit              
    jmp     l_f1_17_if_false        #  26:     goto   17_if_false
    jmp     l_f1_15                 #  27:     goto   15
l_f1_17_if_false:
l_f1_15:
    jmp     l_f1_4                  #  30:     goto   4
l_f1_6_if_false:
l_f1_4:
    movl    $84123, %eax            #  33:     mul    t12 <- 84123, 63024
    movl    $63024, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  34:     mul    t13 <- t12, 6137
    movl    $6137, %ebx            
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  35:     div    t14 <- t13, 7021
    movl    $7021, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  36:     assign v0 <- t14
    movl    %eax, -60(%ebp)        

l_f1_exit:
    # epilogue
    addl    $48, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t4       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t5       <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #    -15(%ebp)   1  [ $v1       <char> %ebp-15 ]

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
l_f2_1_while_cond:
    call    dummyCHARfunc           #   1:     call   t4 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $98, %eax               #   2:     if     98 > t4 goto 2_while_body
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f2_2_while_body      
    jmp     l_f2_0                  #   3:     goto   0
l_f2_2_while_body:
    movl    $97, %eax               #   5:     assign v1 <- 97
    movb    %al, -15(%ebp)         
    movl    $98, %eax               #   6:     if     98 < 99 goto 6_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_6_if_true         
    jmp     l_f2_7_if_false         #   7:     goto   7_if_false
l_f2_6_if_true:
    jmp     l_f2_5                  #   9:     goto   5
l_f2_7_if_false:
l_f2_5:
    call    dummyBOOLfunc           #  12:     call   t5 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    jmp     l_f2_1_while_cond       #  13:     goto   1_while_cond
l_f2_0:
    jmp     l_f2_exit              
    movl    $97, %eax               #  16:     assign v1 <- 97
    movb    %al, -15(%ebp)         

l_f2_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]

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
l_test_1_while_cond:
    jmp     l_test_2_while_body     #   1:     goto   2_while_body
l_test_2_while_body:
    jmp     l_test_1_while_cond     #   3:     goto   1_while_cond
    jmp     l_test_9_if_false       #   4:     goto   9_if_false
l_test_11_while_cond:
    jmp     l_test_10               #   6:     goto   10
    movl    $37628, %eax            #   7:     if     37628 > 58214 goto 14_if_true
    movl    $58214, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_14_if_true      
    jmp     l_test_15_if_false      #   8:     goto   15_if_false
l_test_14_if_true:
    jmp     l_test_13               #  10:     goto   13
l_test_15_if_false:
l_test_13:
    jmp     l_test_exit            
    movl    $42905, %eax            #  14:     assign v0 <- 42905
    movl    %eax, v0               
    movl    $98, %eax               #  15:     assign v1 <- 98
    movb    %al, v1                
    jmp     l_test_exit            
    jmp     l_test_exit            
    call    dummyCHARfunc           #  18:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    dummyBOOLfunc           #  19:     call   t1 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    jmp     l_test_11_while_cond    #  20:     goto   11_while_cond
l_test_10:
    jmp     l_test_7                #  22:     goto   7
l_test_9_if_false:
l_test_7:
    movl    $31858, %eax            #  25:     sub    t2 <- 31858, 36927
    movl    $36927, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  26:     sub    t3 <- t2, 29558
    movl    $29558, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  27:     if     t3 > 81365 goto 25_if_true
    movl    $81365, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_25_if_true      
    jmp     l_test_26_if_false      #  28:     goto   26_if_false
l_test_25_if_true:
    movl    $97, %eax               #  30:     assign v1 <- 97
    movb    %al, v1                
    jmp     l_test_24               #  31:     goto   24
l_test_26_if_false:
l_test_24:

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

    # scope: test
v0:                                 # <int>
    .skip    4
v1:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
