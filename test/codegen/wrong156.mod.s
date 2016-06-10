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
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t5       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t6       <int> %ebp-36 ]
    #    -37(%ebp)   1  [ $t7       <bool> %ebp-37 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 1 of <array 4 of <array 4 of <array 4 of <array 9 of <bool>>>>>>> %ebp+12 ]
    #    -38(%ebp)   1  [ $v2       <char> %ebp-38 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $28, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $7, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_f0_1_while_cond:
    call    ReadInt                 #   1:     call   t1 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     add    t2 <- t1, 87996
    movl    $87996, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $51155, %eax            #   3:     if     51155 > t2 goto 2_while_body
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f0_2_while_body      
    jmp     l_f0_0                  #   4:     goto   0
l_f0_2_while_body:
    jmp     l_f0_1_while_cond       #   6:     goto   1_while_cond
l_f0_0:
    movl    $44530, %eax            #   8:     mul    t3 <- 44530, 61877
    movl    $61877, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   9:     div    t4 <- t3, 68222
    movl    $68222, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  10:     sub    t5 <- t4, 1074
    movl    $1074, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  11:     add    t6 <- t5, 48415
    movl    $48415, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  12:     return t6
    jmp     l_f0_exit              
l_f0_6_while_cond:
    movl    $99, %eax               #  14:     assign v2 <- 99
    movb    %al, -38(%ebp)         
l_f0_10_while_cond:
    jmp     l_f0_10_while_cond      #  16:     goto   10_while_cond
    call    WriteLn                 #  17:     call   WriteLn
    movl    $34979, %eax            #  18:     assign v0 <- 34979
    movl    %eax, 8(%ebp)          
    call    dummyBOOLfunc           #  19:     call   t7 <- dummyBOOLfunc
    movb    %al, -37(%ebp)         
    jmp     l_f0_6_while_cond       #  20:     goto   6_while_cond

l_f0_exit:
    # epilogue
    addl    $28, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t1       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <bool> %ebp-14 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 3 of <array 1 of <array 5 of <array 7 of <array 5 of <char>>>>>>> %ebp+12 ]
    #    -15(%ebp)   1  [ $v2       <char> %ebp-15 ]

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
l_f1_1_while_cond:
    call    dummyCHARfunc           #   1:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t1 <= 99 goto 2_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_2_while_body      
    jmp     l_f1_0                  #   3:     goto   0
l_f1_2_while_body:
    jmp     l_f1_1_while_cond       #   5:     goto   1_while_cond
l_f1_0:
l_f1_5_while_cond:
    movl    $97, %eax               #   8:     return 97
    jmp     l_f1_exit              
    call    dummyBOOLfunc           #   9:     call   t2 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    jmp     l_f1_5_while_cond       #  10:     goto   5_while_cond
    movl    $100, %eax              #  11:     assign v2 <- 100
    movb    %al, -15(%ebp)         

l_f1_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t1       <ptr(4) to <array 3 of <array 1 of <array 5 of <array 7 of <array 5 of <char>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t2       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t3       <bool> %ebp-18 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 7 of <array 1 of <array 5 of <array 2 of <array 1 of <int>>>>>>> %ebp+8 ]
    #   -568(%ebp)  549  [ $v1       <array 3 of <array 1 of <array 5 of <array 7 of <array 5 of <char>>>>>> %ebp-568 ]
    #   -569(%ebp)   1  [ $v2       <bool> %ebp-569 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $560, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $140, %ecx             
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-568(%ebp)           # local array 'v1': 5 dimensions
    movl    $3,-564(%ebp)           #   dimension 1: 3 elements
    movl    $1,-560(%ebp)           #   dimension 2: 1 elements
    movl    $5,-556(%ebp)           #   dimension 3: 5 elements
    movl    $7,-552(%ebp)           #   dimension 4: 7 elements
    movl    $5,-548(%ebp)           #   dimension 5: 5 elements

    # function body
    leal    -568(%ebp), %eax        #   0:     &()    t1 <- v1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  1 <- t1
    pushl   %eax                   
    movl    $0, %eax                #   2:     param  0 <- 0
    pushl   %eax                   
    call    f1                      #   3:     call   t2 <- f1
    addl    $8, %esp               
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   4:     return t2
    jmp     l_f2_exit              
    movl    $98, %eax               #   5:     if     98 >= 97 goto 2_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_2_if_true         
    jmp     l_f2_3_if_false         #   6:     goto   3_if_false
l_f2_2_if_true:
    movl    $1, %eax                #   8:     assign v2 <- 1
    movb    %al, -569(%ebp)        
    jmp     l_f2_1                  #   9:     goto   1
l_f2_3_if_false:
l_f2_1:
    jmp     l_f2_8                  #  12:     goto   8
    jmp     l_f2_8                  #  13:     goto   8
    movl    $1, %eax                #  14:     assign t3 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f2_9                  #  15:     goto   9
l_f2_8:
    movl    $0, %eax                #  17:     assign t3 <- 0
    movb    %al, -18(%ebp)         
l_f2_9:
    movzbl  -18(%ebp), %eax         #  19:     assign v2 <- t3
    movb    %al, -569(%ebp)        

l_f2_exit:
    # epilogue
    addl    $560, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]

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
    jmp     l_test_exit            
l_test_2_while_cond:
    call    dummyBOOLfunc           #   2:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   3:     if     t0 = 1 goto 3_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_3_while_body    
    jmp     l_test_1                #   4:     goto   1
l_test_3_while_body:
    jmp     l_test_2_while_cond     #   6:     goto   2_while_cond
l_test_1:
l_test_5_while_cond:
    jmp     l_test_6_while_body     #   9:     goto   6_while_body
    jmp     l_test_6_while_body     #  10:     goto   6_while_body
    jmp     l_test_6_while_body     #  11:     goto   6_while_body
    jmp     l_test_6_while_body     #  12:     goto   6_while_body
    jmp     l_test_6_while_body     #  13:     goto   6_while_body
    jmp     l_test_6_while_body     #  14:     goto   6_while_body
    jmp     l_test_6_while_body     #  15:     goto   6_while_body
    jmp     l_test_4                #  16:     goto   4
l_test_6_while_body:
    jmp     l_test_5_while_cond     #  18:     goto   5_while_cond
l_test_4:
    movl    $99, %eax               #  20:     if     99 < 98 goto 18_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_18_if_true      
    jmp     l_test_19_if_false      #  21:     goto   19_if_false
l_test_18_if_true:
    jmp     l_test_23_if_false      #  23:     goto   23_if_false
    jmp     l_test_21               #  24:     goto   21
l_test_23_if_false:
l_test_21:
    jmp     l_test_exit            
    movl    $100, %eax              #  28:     assign v0 <- 100
    movb    %al, v0                
l_test_27_while_cond:
    movl    $66803, %eax            #  30:     if     66803 = 85413 goto 28_while_body
    movl    $85413, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_28_while_body   
    jmp     l_test_26               #  31:     goto   26
l_test_28_while_body:
    jmp     l_test_27_while_cond    #  33:     goto   27_while_cond
l_test_26:
    jmp     l_test_17               #  35:     goto   17
l_test_19_if_false:
l_test_17:

l_test_exit:
    # epilogue
    addl    $4, %esp                # remove locals
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
