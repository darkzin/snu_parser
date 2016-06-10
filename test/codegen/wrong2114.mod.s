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
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t3       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t4       <char> %ebp-18 ]
    #    -19(%ebp)   1  [ $t5       <char> %ebp-19 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t7       <bool> %ebp-25 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <int> %ebp+16 ]

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
l_f0_1_while_cond:
    movl    $54829, %eax            #   1:     sub    t2 <- 54829, 70228
    movl    $70228, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     if     t2 > 41717 goto 2_while_body
    movl    $41717, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_2_while_body      
    jmp     l_f0_0                  #   3:     goto   0
l_f0_2_while_body:
    call    dummyCHARfunc           #   5:     call   t3 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    call    dummyCHARfunc           #   6:     call   t4 <- dummyCHARfunc
    movb    %al, -18(%ebp)         
    jmp     l_f0_1_while_cond       #   7:     goto   1_while_cond
l_f0_0:
    call    dummyCHARfunc           #   9:     call   t5 <- dummyCHARfunc
    movb    %al, -19(%ebp)         
    movl    $15452, %eax            #  10:     add    t6 <- 15452, 73495
    movl    $73495, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $8937, %eax             #  11:     if     8937 = t6 goto 8
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f0_8                 
    jmp     l_f0_9                  #  12:     goto   9
l_f0_8:
    movl    $1, %eax                #  14:     assign t7 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f0_10                 #  15:     goto   10
l_f0_9:
    movl    $0, %eax                #  17:     assign t7 <- 0
    movb    %al, -25(%ebp)         
l_f0_10:
    movzbl  -25(%ebp), %eax         #  19:     assign v1 <- t7
    movb    %al, 8(%ebp)           

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
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 5 of <array 58 of <array 28 of <array 82 of <array 36 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 6 of <array 83 of <array 76 of <array 26 of <array 69 of <bool>>>>>>> %ebp+20 ]
    #    -14(%ebp)   1  [ $v5       <char> %ebp-14 ]

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
    jmp     l_f1_exit              
    jmp     l_f1_exit              
    movl    $97, %eax               #   2:     if     97 >= 99 goto 3_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_3_if_true         
    jmp     l_f1_4_if_false         #   3:     goto   4_if_false
l_f1_3_if_true:
    movl    $97, %eax               #   5:     assign v5 <- 97
    movb    %al, -14(%ebp)         
    movl    $44941, %eax            #   6:     if     44941 < 53731 goto 8_if_true
    movl    $53731, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_8_if_true         
    jmp     l_f1_9_if_false         #   7:     goto   9_if_false
l_f1_8_if_true:
    jmp     l_f1_7                  #   9:     goto   7
l_f1_9_if_false:
l_f1_7:
l_f1_12_while_cond:
    movl    $82948, %eax            #  13:     if     82948 >= 44012 goto 13_while_body
    movl    $44012, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_13_while_body     
    jmp     l_f1_11                 #  14:     goto   11
l_f1_13_while_body:
    jmp     l_f1_12_while_cond      #  16:     goto   12_while_cond
l_f1_11:
    call    dummyBOOLfunc           #  18:     call   t2 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_f1_2                  #  19:     goto   2
l_f1_4_if_false:
l_f1_2:

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
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t3       <ptr(4) to <array 7 of <char>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $v1       <int> %ebp-32 ]

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
    movl    $97, %eax               #   0:     if     97 = 97 goto 1_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
    call    dummyINTfunc            #   3:     call   t2 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   4:     assign v1 <- t2
    movl    %eax, -32(%ebp)        
    jmp     l_f2_0                  #   5:     goto   0
l_f2_2_if_false:
l_f2_0:
    leal    _str_1, %eax            #   8:     &()    t3 <- _str_1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   9:     param  0 <- t3
    pushl   %eax                   
    call    WriteStr                #  10:     call   WriteStr
    addl    $4, %esp               
    movl    $39718, %eax            #  11:     sub    t4 <- 39718, 44610
    movl    $44610, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  12:     add    t5 <- t4, 10322
    movl    $10322, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  13:     assign v1 <- t5
    movl    %eax, -32(%ebp)        

l_f2_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]

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
    movl    $98, %eax               #   0:     assign v0 <- 98
    movb    %al, v0                
    jmp     l_test_exit            
l_test_3_while_cond:
    jmp     l_test_7                #   3:     goto   7
    movl    $1, %eax                #   4:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_8                #   5:     goto   8
l_test_7:
    movl    $0, %eax                #   7:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_8:
    movl    $1, %eax                #   9:     if     1 # t0 goto 4_while_body
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_test_4_while_body    
    jmp     l_test_2                #  10:     goto   2
l_test_4_while_body:
    jmp     l_test_3_while_cond     #  12:     goto   3_while_cond
l_test_2:
    jmp     l_test_exit            
    movl    $0, %eax                #  15:     if     0 # 0 goto 14_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_14_if_true      
    jmp     l_test_15_if_false      #  16:     goto   15_if_false
l_test_14_if_true:
    movl    $99428, %eax            #  18:     sub    t1 <- 99428, 59159
    movl    $59159, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  19:     assign v1 <- t1
    movl    %eax, v1               
    jmp     l_test_13               #  20:     goto   13
l_test_15_if_false:
l_test_13:
    call    dummyProcedure          #  23:     call   dummyProcedure

l_test_exit:
    # epilogue
    addl    $8, %esp                # remove locals
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
_str_1:                             # <array 7 of <char>>
    .long    1
    .long    7
    .asciz "hello\n"
v0:                                 # <char>
    .skip    1
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
