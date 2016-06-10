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
    #    -25(%ebp)   1  [ $t4       <bool> %ebp-25 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 10 of <array 6 of <array 9 of <array 1 of <array 3 of <int>>>>>>> %ebp+8 ]

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
    jmp     l_f0_2_while_body       #   1:     goto   2_while_body
    jmp     l_f0_0                  #   2:     goto   0
l_f0_2_while_body:
    jmp     l_f0_1_while_cond       #   4:     goto   1_while_cond
l_f0_0:
    movl    $97465, %eax            #   6:     add    t1 <- 97465, 72987
    movl    $72987, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   7:     add    t2 <- t1, 37829
    movl    $37829, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   8:     sub    t3 <- t2, 61613
    movl    $61613, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   9:     param  0 <- t3
    pushl   %eax                   
    call    WriteInt                #  10:     call   WriteInt
    addl    $4, %esp               
    call    dummyBOOLfunc           #  11:     call   t4 <- dummyBOOLfunc
    movb    %al, -25(%ebp)         

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
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t5       <char> %ebp-29 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 5 of <array 3 of <array 10 of <array 7 of <array 3 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 1 of <array 7 of <array 1 of <array 2 of <array 8 of <int>>>>>>> %ebp+12 ]
    #    -36(%ebp)   4  [ $v2       <int> %ebp-36 ]
    #    -37(%ebp)   1  [ $v3       <char> %ebp-37 ]

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
l_f1_1_while_cond:
    movl    $80943, %eax            #   1:     if     80943 < 38234 goto 2_while_body
    movl    $38234, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_2_while_body      
    jmp     l_f1_0                  #   2:     goto   0
l_f1_2_while_body:
    call    ReadInt                 #   4:     call   t1 <- ReadInt
    movl    %eax, -16(%ebp)        
    jmp     l_f1_5                  #   5:     goto   5
l_f1_5:
    jmp     l_f1_1_while_cond       #   7:     goto   1_while_cond
l_f1_0:
    movl    $26155, %eax            #   9:     add    t2 <- 26155, 65981
    movl    $65981, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  10:     sub    t3 <- t2, 9743
    movl    $9743, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  11:     add    t4 <- t3, 3340
    movl    $3340, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  12:     assign v2 <- t4
    movl    %eax, -36(%ebp)        
l_f1_10_while_cond:
    jmp     l_f1_9                  #  14:     goto   9
    call    dummyCHARfunc           #  15:     call   t5 <- dummyCHARfunc
    movb    %al, -29(%ebp)         
    movzbl  -29(%ebp), %eax         #  16:     assign v3 <- t5
    movb    %al, -37(%ebp)         
    jmp     l_f1_10_while_cond      #  17:     goto   10_while_cond
l_f1_9:

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
    #    -13(%ebp)   1  [ $t1       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t3       <bool> %ebp-15 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 4 of <array 6 of <array 9 of <array 10 of <array 1 of <bool>>>>>>> %ebp+8 ]

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
    call    dummyCHARfunc           #   0:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
l_f2_2_while_cond:
    jmp     l_f2_1                  #   2:     goto   1
    jmp     l_f2_9_if_false         #   3:     goto   9_if_false
    jmp     l_f2_7                  #   4:     goto   7
l_f2_9_if_false:
l_f2_7:
    jmp     l_f2_2_while_cond       #   7:     goto   2_while_cond
l_f2_1:
    call    dummyBOOLfunc           #   9:     call   t2 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  10:     if     t2 = 1 goto 11
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_11                
    jmp     l_f2_12                 #  11:     goto   12
l_f2_11:
    movl    $1, %eax                #  13:     assign t3 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f2_13                 #  14:     goto   13
l_f2_12:
    movl    $0, %eax                #  16:     assign t3 <- 0
    movb    %al, -15(%ebp)         
l_f2_13:
    movzbl  -15(%ebp), %eax         #  18:     return t3
    jmp     l_f2_exit              

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
    call    dummyCHARfunc           #   1:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $100, %eax              #   2:     if     100 = t0 goto 2_while_body
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_test_2_while_body    
    jmp     l_test_0                #   3:     goto   0
l_test_2_while_body:
    jmp     l_test_1_while_cond     #   5:     goto   1_while_cond
l_test_0:
l_test_5_while_cond:
    movl    $60074, %eax            #   8:     if     60074 <= 37249 goto 6_while_body
    movl    $37249, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_6_while_body    
    jmp     l_test_4                #   9:     goto   4
l_test_6_while_body:
    jmp     l_test_5_while_cond     #  11:     goto   5_while_cond
l_test_4:
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









    # end of global data section
    #-----------------------------------------

    .end
##################################################
