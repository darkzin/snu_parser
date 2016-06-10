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
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <char> %ebp-14 ]
    #      8(%ebp)   1  [ %v2       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 1 of <array 1 of <array 9 of <array 1 of <array 2 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <ptr(4) to <array 9 of <array 3 of <array 3 of <array 5 of <array 10 of <char>>>>>>> %ebp+16 ]
    #    -15(%ebp)   1  [ $v5       <char> %ebp-15 ]

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
    movl    $98, %eax               #   0:     if     98 >= 99 goto 6
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_6                 
    jmp     l_f0_2                  #   1:     goto   2
l_f0_6:
    jmp     l_f0_2                  #   3:     goto   2
    movl    $1, %eax                #   4:     assign t3 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_3                  #   5:     goto   3
l_f0_2:
    movl    $0, %eax                #   7:     assign t3 <- 0
    movb    %al, -13(%ebp)         
l_f0_3:
    movzbl  -13(%ebp), %eax         #   9:     return t3
    jmp     l_f0_exit              
    movl    $100, %eax              #  10:     assign v5 <- 100
    movb    %al, -15(%ebp)         
    call    dummyCHARfunc           #  11:     call   t4 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  12:     assign v5 <- t4
    movb    %al, -15(%ebp)         

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
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t7       <char> %ebp-29 ]
    #    -36(%ebp)   4  [ $t8       <int> %ebp-36 ]
    #    -37(%ebp)   1  [ $v2       <char> %ebp-37 ]

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
    movl    $74826, %eax            #   0:     sub    t3 <- 74826, 34999
    movl    $34999, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     sub    t4 <- t3, 36848
    movl    $36848, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $69253, %eax            #   2:     div    t5 <- 69253, 67165
    movl    $67165, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #   3:     sub    t6 <- t4, t5
    movl    -24(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   4:     return t6
    jmp     l_f1_exit              
    call    dummyCHARfunc           #   5:     call   t7 <- dummyCHARfunc
    movb    %al, -29(%ebp)         
    movzbl  -29(%ebp), %eax         #   6:     assign v2 <- t7
    movb    %al, -37(%ebp)         
l_f1_3_while_cond:
    movl    $41539, %eax            #   8:     div    t8 <- 41539, 73018
    movl    $73018, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    $83739, %eax            #   9:     if     83739 < t8 goto 4_while_body
    movl    -36(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f1_4_while_body      
    jmp     l_f1_2                  #  10:     goto   2
l_f1_4_while_body:
    jmp     l_f1_3_while_cond       #  12:     goto   3_while_cond
l_f1_2:

l_f1_exit:
    # epilogue
    addl    $28, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $v2       <int> %ebp-24 ]

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
    movl    $51109, %eax            #   0:     assign v2 <- 51109
    movl    %eax, -24(%ebp)        
    call    dummyCHARfunc           #   1:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     return t3
    jmp     l_f2_exit              
    jmp     l_f2_4_if_false         #   3:     goto   4_if_false
    call    dummyINTfunc            #   4:     call   t4 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   5:     param  0 <- t4
    pushl   %eax                   
    call    WriteInt                #   6:     call   WriteInt
    addl    $4, %esp               
    movl    $100, %eax              #   7:     if     100 >= 99 goto 7_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_7_if_true         
    jmp     l_f2_8_if_false         #   8:     goto   8_if_false
l_f2_7_if_true:
    jmp     l_f2_6                  #  10:     goto   6
l_f2_8_if_false:
l_f2_6:
    jmp     l_f2_2                  #  13:     goto   2
l_f2_4_if_false:
l_f2_2:

l_f2_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <bool> %ebp-15 ]

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
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     assign v0 <- t0
    movb    %al, v0                
    movl    $79777, %eax            #   2:     if     79777 <= 66767 goto 2_if_true
    movl    $66767, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_2_if_true       
    jmp     l_test_3_if_false       #   3:     goto   3_if_false
l_test_2_if_true:
    jmp     l_test_5                #   5:     goto   5
l_test_5:
    call    dummyProcedure          #   7:     call   dummyProcedure
    movl    $7545, %eax             #   8:     if     7545 < 90920 goto 10_if_true
    movl    $90920, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_10_if_true      
    jmp     l_test_11_if_false      #   9:     goto   11_if_false
l_test_10_if_true:
    call    dummyCHARfunc           #  11:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    call    dummyBOOLfunc           #  12:     call   t2 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         
    jmp     l_test_exit            
    jmp     l_test_9                #  14:     goto   9
l_test_11_if_false:
l_test_9:
    jmp     l_test_1                #  17:     goto   1
l_test_3_if_false:
l_test_1:
l_test_17_while_cond:
    jmp     l_test_16               #  21:     goto   16
    movl    $99, %eax               #  22:     assign v0 <- 99
    movb    %al, v0                
    movl    $97, %eax               #  23:     assign v0 <- 97
    movb    %al, v0                
    movl    $37233, %eax            #  24:     assign v1 <- 37233
    movl    %eax, v1               
    jmp     l_test_17_while_cond    #  25:     goto   17_while_cond
l_test_16:
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_exit            

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
    .align   4
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
