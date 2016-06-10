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
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 87 of <array 65 of <array 32 of <array 44 of <array 23 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]

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
l_f0_1_while_cond:
    jmp     l_f0_0                  #   1:     goto   0
    jmp     l_f0_0                  #   2:     goto   0
    jmp     l_f0_0                  #   3:     goto   0
    jmp     l_f0_1_while_cond       #   4:     goto   1_while_cond
l_f0_0:
    call    ReadInt                 #   6:     call   t3 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   7:     sub    t4 <- t3, 70462
    movl    $70462, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   8:     assign v0 <- t4
    movl    %eax, 8(%ebp)          
l_f0_8_while_cond:
    movl    $97, %eax               #  10:     if     97 >= 97 goto 9_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_9_while_body      
    jmp     l_f0_7                  #  11:     goto   7
l_f0_9_while_body:
    jmp     l_f0_8_while_cond       #  13:     goto   8_while_cond
l_f0_7:

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
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 100 of <array 45 of <array 5 of <array 25 of <array 63 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 78 of <array 49 of <array 37 of <array 73 of <array 29 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]

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
l_f1_1_while_cond:
    movl    $14204, %eax            #   1:     mul    t3 <- 14204, 55990
    movl    $55990, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    $30909, %eax            #   2:     add    t4 <- 30909, t3
    movl    -16(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     if     t4 # 51470 goto 2_while_body
    movl    $51470, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_2_while_body      
    jmp     l_f1_0                  #   4:     goto   0
l_f1_2_while_body:
    jmp     l_f1_1_while_cond       #   6:     goto   1_while_cond
l_f1_0:
    call    ReadInt                 #   8:     call   t5 <- ReadInt
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   9:     param  0 <- t5
    pushl   %eax                   
    call    WriteInt                #  10:     call   WriteInt
    addl    $4, %esp               
l_f1_6_while_cond:
    movl    $85437, %eax            #  12:     if     85437 > 16935 goto 7_while_body
    movl    $16935, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_7_while_body      
l_f1_7_while_body:
    jmp     l_f1_6_while_cond       #  14:     goto   6_while_cond

l_f1_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t5       <ptr(4) to <array 78 of <array 49 of <array 37 of <array 73 of <array 29 of <char>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <ptr(4) to <array 100 of <array 45 of <array 5 of <array 25 of <array 63 of <bool>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t7       <char> %ebp-25 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #   -35437552(%ebp)  35437524  [ $v1       <array 100 of <array 45 of <array 5 of <array 25 of <array 63 of <bool>>>>>> %ebp-35437552 ]
    #   -334811016(%ebp)  299373462  [ $v2       <array 78 of <array 49 of <array 37 of <array 73 of <array 29 of <char>>>>>> %ebp-334811016 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $334811004, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $83702751, %ecx        
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-35437552(%ebp)      # local array 'v1': 5 dimensions
    movl    $100,-35437548(%ebp)    #   dimension 1: 100 elements
    movl    $45,-35437544(%ebp)     #   dimension 2: 45 elements
    movl    $5,-35437540(%ebp)      #   dimension 3: 5 elements
    movl    $25,-35437536(%ebp)     #   dimension 4: 25 elements
    movl    $63,-35437532(%ebp)     #   dimension 5: 63 elements
    movl    $5,-334811016(%ebp)     # local array 'v2': 5 dimensions
    movl    $78,-334811012(%ebp)    #   dimension 1: 78 elements
    movl    $49,-334811008(%ebp)    #   dimension 2: 49 elements
    movl    $37,-334811004(%ebp)    #   dimension 3: 37 elements
    movl    $73,-334811000(%ebp)    #   dimension 4: 73 elements
    movl    $29,-334810996(%ebp)    #   dimension 5: 29 elements

    # function body
    call    dummyCHARfunc           #   0:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $97, %eax               #   1:     if     97 >= 100 goto 2
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f2_2                 
    jmp     l_f2_3                  #   2:     goto   3
l_f2_2:
    movl    $1, %eax                #   4:     assign t4 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_4                  #   5:     goto   4
l_f2_3:
    movl    $0, %eax                #   7:     assign t4 <- 0
    movb    %al, -14(%ebp)         
l_f2_4:
    movzbl  -14(%ebp), %eax         #   9:     param  2 <- t4
    pushl   %eax                   
    leal    -334811016(%ebp), %eax  #  10:     &()    t5 <- v2
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  11:     param  1 <- t5
    pushl   %eax                   
    leal    -35437552(%ebp), %eax   #  12:     &()    t6 <- v1
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  13:     param  0 <- t6
    pushl   %eax                   
    call    f1                      #  14:     call   t7 <- f1
    addl    $12, %esp              
    movb    %al, -25(%ebp)         
    movzbl  -25(%ebp), %eax         #  15:     return t7
    jmp     l_f2_exit              
    movl    $67096, %eax            #  16:     assign v0 <- 67096
    movl    %eax, 8(%ebp)          

l_f2_exit:
    # epilogue
    addl    $334811004, %esp        # remove locals
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
    movl    $82534, %eax            #   2:     div    t0 <- 82534, 74650
    movl    $74650, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   3:     div    t1 <- t0, 47686
    movl    $47686, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    call    ReadInt                 #   4:     call   t2 <- ReadInt
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #   5:     if     t1 # t2 goto 3_while_body
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_test_3_while_body    
    jmp     l_test_1                #   6:     goto   1
l_test_3_while_body:
    jmp     l_test_2_while_cond     #   8:     goto   2_while_cond
l_test_1:
    jmp     l_test_exit            

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
