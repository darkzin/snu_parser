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
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 5 of <array 6 of <array 2 of <array 4 of <array 9 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 5 of <array 8 of <array 7 of <array 10 of <array 9 of <char>>>>>>> %ebp+12 ]
    #    -15(%ebp)   1  [ $v2       <bool> %ebp-15 ]

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
    jmp     l_f0_2                  #   0:     goto   2
    movl    $1, %eax                #   1:     assign t1 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_3                  #   2:     goto   3
l_f0_2:
    movl    $0, %eax                #   4:     assign t1 <- 0
    movb    %al, -13(%ebp)         
l_f0_3:
    movzbl  -13(%ebp), %eax         #   6:     assign v2 <- t1
    movb    %al, -15(%ebp)         
    call    WriteLn                 #   7:     call   WriteLn
l_f0_9_while_cond:
    jmp     l_f0_8                  #   9:     goto   8
l_f0_13_while_cond:
    jmp     l_f0_13_while_cond      #  11:     goto   13_while_cond
l_f0_16_while_cond:
    movl    $97, %eax               #  13:     if     97 >= 97 goto 17_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_17_while_body     
    jmp     l_f0_15                 #  14:     goto   15
l_f0_17_while_body:
    jmp     l_f0_16_while_cond      #  16:     goto   16_while_cond
l_f0_15:
    movl    $16735, %eax            #  18:     if     16735 <= 78486 goto 20
    movl    $78486, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_20                
    jmp     l_f0_21                 #  19:     goto   21
l_f0_20:
    movl    $1, %eax                #  21:     assign t2 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_22                 #  22:     goto   22
l_f0_21:
    movl    $0, %eax                #  24:     assign t2 <- 0
    movb    %al, -14(%ebp)         
l_f0_22:
    movzbl  -14(%ebp), %eax         #  26:     return t2
    jmp     l_f0_exit              
    movl    $80242, %eax            #  27:     if     80242 < 63025 goto 25_if_true
    movl    $63025, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_25_if_true        
    jmp     l_f0_26_if_false        #  28:     goto   26_if_false
l_f0_25_if_true:
    jmp     l_f0_24                 #  30:     goto   24
l_f0_26_if_false:
l_f0_24:
    jmp     l_f0_9_while_cond       #  33:     goto   9_while_cond
l_f0_8:

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
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t3       <bool> %ebp-15 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t6       <bool> %ebp-25 ]
    #    -32(%ebp)   4  [ $t7       <int> %ebp-32 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 9 of <array 4 of <array 8 of <array 1 of <array 2 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 2 of <array 1 of <array 4 of <array 10 of <array 4 of <char>>>>>>> %ebp+20 ]
    #    -33(%ebp)   1  [ $v4       <bool> %ebp-33 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $24, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $6, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyBOOLfunc           #   0:     call   t1 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_f1_5                  #   1:     goto   5
l_f1_5:
    movl    $1, %eax                #   3:     assign t2 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_7                  #   4:     goto   7
    movl    $0, %eax                #   5:     assign t2 <- 0
    movb    %al, -14(%ebp)         
l_f1_7:
    movzbl  -13(%ebp), %eax         #   7:     if     t1 # t2 goto 1
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f1_1                 
    jmp     l_f1_2                  #   8:     goto   2
l_f1_1:
    movl    $1, %eax                #  10:     assign t3 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f1_3                  #  11:     goto   3
l_f1_2:
    movl    $0, %eax                #  13:     assign t3 <- 0
    movb    %al, -15(%ebp)         
l_f1_3:
    movzbl  -15(%ebp), %eax         #  15:     return t3
    jmp     l_f1_exit              
    movl    $9088, %eax             #  16:     add    t4 <- 9088, 1501
    movl    $1501, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $70, %eax               #  17:     mul    t5 <- 70, 11506
    movl    $11506, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  18:     if     t4 > t5 goto 12
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f1_12                
    jmp     l_f1_13                 #  19:     goto   13
l_f1_12:
    movl    $1, %eax                #  21:     assign t6 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f1_14                 #  22:     goto   14
l_f1_13:
    movl    $0, %eax                #  24:     assign t6 <- 0
    movb    %al, -25(%ebp)         
l_f1_14:
    movzbl  -25(%ebp), %eax         #  26:     assign v4 <- t6
    movb    %al, -33(%ebp)         
    call    dummyINTfunc            #  27:     call   t7 <- dummyINTfunc
    movl    %eax, -32(%ebp)        

l_f1_exit:
    # epilogue
    addl    $24, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t2       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t3       <char> %ebp-18 ]
    #    -19(%ebp)   1  [ $t4       <bool> %ebp-19 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]

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
    jmp     l_f2_0                  #   1:     goto   0
    jmp     l_f2_5_if_false         #   2:     goto   5_if_false
    jmp     l_f2_3                  #   3:     goto   3
l_f2_5_if_false:
l_f2_3:
    jmp     l_f2_1_while_cond       #   6:     goto   1_while_cond
l_f2_0:
    movl    $56804, %eax            #   8:     add    t1 <- 56804, 35033
    movl    $35033, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   9:     if     t1 >= 40977 goto 7
    movl    $40977, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_7                 
    jmp     l_f2_8                  #  10:     goto   8
l_f2_7:
    movl    $1, %eax                #  12:     assign t2 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f2_9                  #  13:     goto   9
l_f2_8:
    movl    $0, %eax                #  15:     assign t2 <- 0
    movb    %al, -17(%ebp)         
l_f2_9:
    movzbl  -17(%ebp), %eax         #  17:     assign v1 <- t2
    movb    %al, 12(%ebp)          
    call    dummyCHARfunc           #  18:     call   t3 <- dummyCHARfunc
    movb    %al, -18(%ebp)         
    movl    $99, %eax               #  19:     if     99 >= t3 goto 12
    movzbl  -18(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f2_12                
    jmp     l_f2_13                 #  20:     goto   13
l_f2_12:
    movl    $1, %eax                #  22:     assign t4 <- 1
    movb    %al, -19(%ebp)         
    jmp     l_f2_14                 #  23:     goto   14
l_f2_13:
    movl    $0, %eax                #  25:     assign t4 <- 0
    movb    %al, -19(%ebp)         
l_f2_14:
    movzbl  -19(%ebp), %eax         #  27:     assign v0 <- t4
    movb    %al, 8(%ebp)           

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
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]

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
l_test_1_while_cond:
    movl    $1, %eax                #   1:     if     1 = 0 goto 2_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_2_while_body    
    jmp     l_test_0                #   2:     goto   0
l_test_2_while_body:
    call    dummyCHARfunc           #   4:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_1_while_cond     #   5:     goto   1_while_cond
l_test_0:
    jmp     l_test_exit            
l_test_7_while_cond:
    jmp     l_test_8_while_body     #   9:     goto   8_while_body
    jmp     l_test_8_while_body     #  10:     goto   8_while_body
    jmp     l_test_8_while_body     #  11:     goto   8_while_body
l_test_8_while_body:
    jmp     l_test_7_while_cond     #  13:     goto   7_while_cond

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









    # end of global data section
    #-----------------------------------------

    .end
##################################################
