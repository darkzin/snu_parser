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
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $v0       <bool> %ebp-14 ]

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
    jmp     l_f0_exit              
    jmp     l_f0_2                  #   1:     goto   2
    jmp     l_f0_3                  #   2:     goto   3
l_f0_2:
    movl    $1, %eax                #   4:     assign t2 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_4                  #   5:     goto   4
l_f0_3:
    movl    $0, %eax                #   7:     assign t2 <- 0
    movb    %al, -13(%ebp)         
l_f0_4:
    movzbl  -13(%ebp), %eax         #   9:     assign v0 <- t2
    movb    %al, -14(%ebp)         
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
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t4       <bool> %ebp-15 ]

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
    call    dummyCHARfunc           #   0:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t2
    jmp     l_f1_exit              
    call    dummyCHARfunc           #   2:     call   t3 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
l_f1_3_while_cond:
    jmp     l_f1_4_while_body       #   4:     goto   4_while_body
    call    dummyBOOLfunc           #   5:     call   t4 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #   6:     if     t4 = 1 goto 4_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_4_while_body      
    jmp     l_f1_2                  #   7:     goto   2
l_f1_4_while_body:
    jmp     l_f1_3_while_cond       #   9:     goto   3_while_cond
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
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 68 of <array 73 of <array 81 of <array 78 of <array 26 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]

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
l_f2_4_while_cond:
    jmp     l_f2_3                  #   2:     goto   3
    jmp     l_f2_4_while_cond       #   3:     goto   4_while_cond
l_f2_3:
l_f2_7_while_cond:
    jmp     l_f2_6                  #   6:     goto   6
    jmp     l_f2_7_while_cond       #   7:     goto   7_while_cond
l_f2_6:
    jmp     l_f2_1_while_cond       #   9:     goto   1_while_cond
    call    dummyBOOLfunc           #  10:     call   t2 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $100, %eax              #  11:     return 100
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
l_test_1_while_cond:
    call    dummyCHARfunc           #   1:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $100, %eax              #   2:     if     100 = t0 goto 2_while_body
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_test_2_while_body    
    jmp     l_test_0                #   3:     goto   0
l_test_2_while_body:
l_test_5_while_cond:
    jmp     l_test_5_while_cond     #   6:     goto   5_while_cond
    jmp     l_test_1_while_cond     #   7:     goto   1_while_cond
l_test_0:
    call    ReadInt                 #   9:     call   t1 <- ReadInt
    movl    %eax, -20(%ebp)        
    jmp     l_test_exit            
    movl    $100, %eax              #  11:     assign v0 <- 100
    movb    %al, v0                
l_test_11_while_cond:
    movl    $89917, %eax            #  13:     if     89917 >= 13207 goto 17
    movl    $13207, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_17              
    jmp     l_test_10               #  14:     goto   10
l_test_17:
    jmp     l_test_10               #  16:     goto   10
    jmp     l_test_10               #  17:     goto   10
    jmp     l_test_11_while_cond    #  18:     goto   11_while_cond
l_test_10:

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
v0:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
