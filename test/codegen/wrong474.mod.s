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
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t6       <int> %ebp-32 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 3 of <array 2 of <array 8 of <array 9 of <array 6 of <char>>>>>>> %ebp+8 ]
    #    -36(%ebp)   4  [ $v2       <int> %ebp-36 ]

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
l_f0_1_while_cond:
    jmp     l_f0_5                  #   1:     goto   5
    movl    $1, %eax                #   2:     assign t2 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_6                  #   3:     goto   6
l_f0_5:
    movl    $0, %eax                #   5:     assign t2 <- 0
    movb    %al, -13(%ebp)         
l_f0_6:
    movl    $1, %eax                #   7:     if     1 = t2 goto 2_while_body
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f0_2_while_body      
    jmp     l_f0_0                  #   8:     goto   0
l_f0_2_while_body:
    movl    $97, %eax               #  10:     param  0 <- 97
    pushl   %eax                   
    call    WriteChar               #  11:     call   WriteChar
    addl    $4, %esp               
    jmp     l_f0_1_while_cond       #  12:     goto   1_while_cond
l_f0_0:
    call    ReadInt                 #  14:     call   t3 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    $72589, %eax            #  15:     sub    t4 <- 72589, t3
    movl    -20(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  16:     return t4
    jmp     l_f0_exit              
    movl    $99468, %eax            #  17:     mul    t5 <- 99468, 14121
    movl    $14121, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  18:     mul    t6 <- t5, 65499
    movl    $65499, %ebx           
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  19:     assign v2 <- t6
    movl    %eax, -36(%ebp)        

l_f0_exit:
    # epilogue
    addl    $24, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #    -14(%ebp)   1  [ $v2       <char> %ebp-14 ]

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
    movl    $98, %eax               #   1:     assign v2 <- 98
    movb    %al, -14(%ebp)         
    jmp     l_f1_exit              

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
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t6       <char> %ebp-29 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 4 of <array 9 of <array 1 of <array 1 of <array 1 of <bool>>>>>>> %ebp+8 ]

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
    movl    $15466, %eax            #   0:     div    t2 <- 15466, 60230
    movl    $60230, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     div    t3 <- t2, 50847
    movl    $50847, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     div    t4 <- t3, 21684
    movl    $21684, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     return t4
    jmp     l_f2_exit              
l_f2_2_while_cond:
    movl    $81354, %eax            #   5:     sub    t5 <- 81354, 41747
    movl    $41747, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $68731, %eax            #   6:     if     68731 <= t5 goto 3_while_body
    movl    -28(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f2_3_while_body      
    jmp     l_f2_1                  #   7:     goto   1
l_f2_3_while_body:
    jmp     l_f2_2_while_cond       #   9:     goto   2_while_cond
l_f2_1:
    call    dummyCHARfunc           #  11:     call   t6 <- dummyCHARfunc
    movb    %al, -29(%ebp)         

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <bool> %ebp-17 ]

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
    jmp     l_test_exit            
l_test_2_while_cond:
    call    ReadInt                 #   2:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $1, %eax                #   3:     assign v0 <- 1
    movb    %al, v0                
    jmp     l_test_2_while_cond     #   4:     goto   2_while_cond
    jmp     l_test_exit            
l_test_8_while_cond:
    call    dummyBOOLfunc           #   7:     call   t1 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   8:     if     t1 = 1 goto 9_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_9_while_body    
    jmp     l_test_7                #   9:     goto   7
l_test_9_while_body:
    movl    $1016, %eax             #  11:     param  0 <- 1016
    pushl   %eax                   
    call    WriteInt                #  12:     call   WriteInt
    addl    $4, %esp               
    jmp     l_test_8_while_cond     #  13:     goto   8_while_cond
l_test_7:
    jmp     l_test_exit            

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
v0:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
