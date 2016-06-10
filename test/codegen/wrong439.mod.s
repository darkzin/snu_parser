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
    #    -13(%ebp)   1  [ $t5       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t8       <int> %ebp-28 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #    -29(%ebp)   1  [ $v1       <char> %ebp-29 ]

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
    call    dummyCHARfunc           #   0:     call   t5 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     assign v1 <- t5
    movb    %al, -29(%ebp)         
    movl    $17910, %eax            #   2:     assign v0 <- 17910
    movl    %eax, 8(%ebp)          
    movl    $31503, %eax            #   3:     mul    t6 <- 31503, 20403
    movl    $20403, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     div    t7 <- t6, 48563
    movl    $48563, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   5:     div    t8 <- t7, 20237
    movl    $20237, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   6:     return t8
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t5       <bool> %ebp-13 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 9 of <array 6 of <array 9 of <array 4 of <array 10 of <char>>>>>>> %ebp+12 ]

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
    call    dummyBOOLfunc           #   0:     call   t5 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     if     t5 = 1 goto 5
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_5                 
    jmp     l_f1_2_if_false         #   2:     goto   2_if_false
l_f1_5:
    jmp     l_f1_2_if_false         #   4:     goto   2_if_false
    jmp     l_f1_0                  #   5:     goto   0
l_f1_2_if_false:
l_f1_0:
l_f1_7_while_cond:
    movl    $100, %eax              #   9:     if     100 < 98 goto 8_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_8_while_body      
    jmp     l_f1_6                  #  10:     goto   6
l_f1_8_while_body:
l_f1_11_while_cond:
    jmp     l_f1_11_while_cond      #  13:     goto   11_while_cond
    jmp     l_f1_7_while_cond       #  14:     goto   7_while_cond
l_f1_6:
    call    dummyProcedure          #  16:     call   dummyProcedure

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
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 2 of <array 3 of <array 7 of <array 7 of <array 2 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 10 of <array 9 of <array 3 of <array 6 of <array 2 of <int>>>>>>> %ebp+20 ]

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
    call    ReadInt                 #   0:     call   t5 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     assign v1 <- t5
    movl    %eax, 12(%ebp)         
    call    dummyINTfunc            #   2:     call   t6 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    call    dummyProcedure          #   3:     call   dummyProcedure

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <char> %ebp-21 ]
    #    -28(%ebp)   4  [ $t3       <ptr(4) to <array 9 of <array 6 of <array 9 of <array 4 of <array 10 of <char>>>>>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t4       <char> %ebp-29 ]

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
l_test_1_while_cond:
    movl    $11153, %eax            #   1:     sub    t0 <- 11153, 24727
    movl    $24727, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     if     t0 >= 91055 goto 2_while_body
    movl    $91055, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_2_while_body    
    jmp     l_test_0                #   3:     goto   0
l_test_2_while_body:
    jmp     l_test_4                #   5:     goto   4
l_test_4:
    jmp     l_test_1_while_cond     #   7:     goto   1_while_cond
l_test_0:
    movl    $57911, %eax            #   9:     param  0 <- 57911
    pushl   %eax                   
    call    f0                      #  10:     call   t1 <- f0
    addl    $4, %esp               
    movl    %eax, -20(%ebp)        
    jmp     l_test_10_if_false      #  11:     goto   10_if_false
    call    dummyCHARfunc           #  12:     call   t2 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    leal    v0, %eax                #  13:     &()    t3 <- v0
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  14:     param  1 <- t3
    pushl   %eax                   
    movl    $1, %eax                #  15:     param  0 <- 1
    pushl   %eax                   
    call    f1                      #  16:     call   t4 <- f1
    addl    $8, %esp               
    movb    %al, -29(%ebp)         
l_test_14_while_cond:
    jmp     l_test_14_while_cond    #  18:     goto   14_while_cond
    jmp     l_test_8                #  19:     goto   8
l_test_10_if_false:
l_test_8:
    jmp     l_test_exit            

l_test_exit:
    # epilogue
    addl    $20, %esp               # remove locals
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
v0:                                 # <array 9 of <array 6 of <array 9 of <array 4 of <array 10 of <char>>>>>>
    .long    5
    .long    9
    .long    6
    .long    9
    .long    4
    .long   10
    .skip 19440








    # end of global data section
    #-----------------------------------------

    .end
##################################################
